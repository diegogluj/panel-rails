class User < ActiveRecord::Base
  set_table_name "userview"
  set_primary_key "id"
  #attr_accessible :firstname, :email, :last_ip, :last_login, :created, :modified, :country, :district, :city, :sex, :dateofbirth, :activated
  has_many :surveys
end
