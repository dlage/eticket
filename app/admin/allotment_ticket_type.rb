ActiveAdmin.register AllotmentTicketType do
  permit_params :quantity, :quantity_commited, :ticket_type_id, :allotment_id

  config.sort_order = 'allotments.name_asc'

  controller do
    def scoped_collection
      super.includes :ticket_type, :allotment # prevents N+1 queries to your database
    end
  end

  index do
    selectable_column
    column :allotment, sortable: 'allotments.name'
    column :ticket_type, sortable: 'ticket_types.name'
    column :quantity
    column :quantity_commited
    column :created_at
    column :updated_at
    actions
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
