ActiveAdmin.register TicketType do
  permit_params :name, :description, :event_id

  controller do
    def scoped_collection
      super.includes :event # prevents N+1 queries to your database
    end
  end

  index do
    selectable_column
    column :event, sortable: 'events.name'
    column :name
    column :description
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
