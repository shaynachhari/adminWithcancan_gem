
ActiveAdmin.register AdminUser do
  # actions :all, except: [:destroy]
  permit_params :email, :password, :password_confirmation, :role
  # controller do
  #   load_and_authorize_resource
  # end

  index do
    column :email
    column :role
    actions
  end

  show do
    attributes_table do
      row :email
      row :role
    end
  end

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role
    end
    f.actions
  end
end
