ActiveAdmin.register Consultation do

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
    column :id
    column :estimated_price
    column :start_time
    column :end_time
    column :status
    column :user_id
    column :demand_id
    column :created_at
    actions
  end

  permit_params :estimated_price, :start_time, :end_time, :status, :user_id, :demand_id, :created_at, :updated_at
end
