ActiveAdmin.register Allotment do
  belongs_to :division
  permit_params :name, :description, :division_id, :allotment_ticket_types

  config.sort_order = 'divisions.name_asc'

  controller do
    def scoped_collection
      super.includes :division # prevents N+1 queries to your database
    end
  end

  preserve_default_filters!

  index do
    selectable_column
    id_column
    column :division, sortable: 'divisions.name'
    column :name
    column :description
    column :event, sortable: 'events.name'
    column 'Ticket Types' do |allotment|
      tt_links = []
      allotment.ticket_types.each do |ticket_type|
        tt_links << raw(link_to ticket_type.name, admin_ticket_type_path(ticket_type), class: "ticket_type_link")
      end
      raw tt_links.join('<br />');
    end
    column 'Groups' do |allotment|
      allotment.invitation_groups.each do |invitation_group|
        link_to invitation_group.name, admin_invitation_group_path(invitation_group), class: "invitation_group_link"
      end
    end
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs
    f.has_many :allotment_ticket_types, allow_destroy: true, heading: 'Tickets' do |types_part|
      types_part.input :ticket_type
      types_part.input :quantity
    end
    f.actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
