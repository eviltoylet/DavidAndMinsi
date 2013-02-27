class Rsvp < ActiveRecord::Base
  serialize :words
  attr_accessible :user, :words
end
