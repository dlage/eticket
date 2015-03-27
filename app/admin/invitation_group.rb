ActiveAdmin.register InvitationGroup do
  permit_params :title, :description, allotments_ids: []

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :division
      f.input :allotments, :as => :select, :input_html => {:multiple => true}
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
