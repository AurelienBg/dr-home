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

# Filtering only the fields we want on the Admin interface
  index do
    selectable_column
    column :id
    # column :first_name
    # column :last_name
    column :name
    column :email
    column :specialty
    column :city
    column :zipcode
    column :min_nb_consult
    column :radius
    column :validated
    column :duration_consult
    column :created_at
    column :admin
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :specialty
      f.input :longitude
      f.input :latitude
      f.input :city
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

    # permit_params :first_name, :last_name,:specialty, :address, :city, :zipcode, :phone, :min_nb_consult, :duration_consult, :sex, :cardnumber, :fav_city, :radius, :photo_id, :photo_prof_doc, :validated
  permit_params :email, :first_name, :last_name, :specialty, :address, :city, :zipcode, :fav_address, :fav_city, :fav_zipcode, :phone, :min_nb_consult, :sex, :latitude, :longitude, :photo, :cardnumber, :admin, :radius, :validated, :duration_consult, :photo_id, :photo_prof_doc
end
