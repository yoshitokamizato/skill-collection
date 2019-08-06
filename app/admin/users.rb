ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :admin

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'UserRegistration' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin
    end
    f.actions
  end
end
