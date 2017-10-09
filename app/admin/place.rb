ActiveAdmin.register Place do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :image, :description
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
  selectable_column
  id_column
  column :image do |product|
    image_tag product.image.url(:thumb)
  end
  column :name
  actions
end



form do |f|
  f.inputs do
    f.input :name
    f.input :description
    f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
  end
  f.actions
end

end
