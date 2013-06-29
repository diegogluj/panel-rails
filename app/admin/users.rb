
ActiveAdmin.register User do
  actions :all, :except => [:destroy]

  filter :country
  filter :district
  filter :city
  filter :sex
  filter :dateofbirth
  filter :youngson, :as => :string_ordinal
  filter :oldson, :as => :string_ordinal

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
    default_actions
  end
  
end
