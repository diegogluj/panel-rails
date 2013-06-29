class User < ActiveRecord::Base
  set_primary_key "id"
  attr_accessible :firstname, :email, :last_ip, :last_login, :created, :modified, :country, :district, :city, :sex, :dateofbirth, :activated, :youngson, :oldson, :lastname, :password, :banned, :ban_reason, :newpass, :newpass_key, :newpass_time, :ed_level, :ocupation, :surveys, :campaign, :activation_key, :activation_date
end
