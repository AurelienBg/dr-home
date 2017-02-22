ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
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
    column :first_name
    column :last_name
    column :email
    column :specialty
    column :city
    column :cardnumberend
    column :created_at
    column :admin
    actions
  end

  permit_params :first_name, :last_name,:specialty, :address, :city, :zipcode, :phone, :min_consultation, :sex, :cardnumber
end
