class User < ActiveRecord::Base
  attr_accessible :attending, :custom_link, :first_name, :guest_first_name, :guest_last_name, :last_name, :words
end
