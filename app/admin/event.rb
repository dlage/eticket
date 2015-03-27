ActiveAdmin.register Event do
  permit_params :title, :description

  sidebar 'Event Details', only: [:show, :edit] do
    ul do
      li link_to 'Divisions', admin_event_scoped_divisions_path(event)
    end
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

ActiveAdmin.register ScopedDivision do
  belongs_to :event
  permit_params :name, :description
end