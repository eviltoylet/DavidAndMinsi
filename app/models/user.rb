class User < ActiveRecord::Base
  serialize :words
  attr_accessible :custom_link, :first_name, :last_name, :guest_first_name, :guest_last_name, :attending, :comments, :words

  def guest?
    !guest_first_name.blank?
  end
end