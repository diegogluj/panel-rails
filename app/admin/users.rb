
ActiveAdmin.register User do

  # Override  ActiveAdmin::ResourceController::DataAccess
  controller do
    # Order collection by random
    def scoped_collection
      User.order("RANDOM()")
    end

    # Override apply_sorting to disable any other sorting than
    # scoped
    def apply_sorting(chain)
      chain
    end

    # Csv export limit
    def max_csv_records
        50_000
    end
  end

  actions :all, :except => [:destroy]

  filter :country
  filter :district
  filter :city
  filter :sex
  filter :dateofbirth
  filter :youngson, :as => :string_ordinal
  filter :oldson, :as => :string_ordinal

  index do
    column :id, :sortable => false
    column :firstname, :sortable => false
    column :email, :sortable => false
    column :country, :sortable => false
    column :district, :sortable => false
    column :city, :sortable => false
    column :sex, :sortable => false
    column :dateofbirth, :sortable => false
    column :activated, :sortable => false
    column :youngson, :sortable => false
    column :oldson, :sortable => false
    default_actions
  end
   
end
