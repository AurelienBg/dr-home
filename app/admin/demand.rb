ActiveAdmin.register Demand do

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

# Filtering only the fields we want on the Admin interface
  index do
    selectable_column
    column :id
    column :first_name
    column :last_name
    column :email
    column :address
    column :city
    column :zipcode
    column :birthday
    column :created_at
    column :illness
    column :due_date
    actions
  end

  permit_params :first_name, :last_name, :address, :city, :zipcode, :phone, :email, :birthday, :sex, :latitude, :longitude, :photo, :created_at, :updated_at, :request_time, :illness, :due_date
end
