ActiveAdmin.register User do
  actions :all, :except => [:destroy, :edit, :new]

  filter :country
  filter :district
  filter :city
  filter :sex
  filter :dateofbirth


  index do
    column :firstname
    column :email
    column :country
    column :district
    column :city
    column :sex
    column :dateofbirth
    column :activated
    column :youngson
    column :oldson
    column :surveys do |user|
      table_for user.surveys
    end	
    default_actions
  end
  
end
