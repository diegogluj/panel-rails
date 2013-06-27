class Survey < ActiveRecord::Base
  set_table_name "survey"
  # attr_accessible :title, :body
  belongs_to :user
end
