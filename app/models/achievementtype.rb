class Achievementtype < ActiveRecord::Base
  attr_accessible :achievementtype, :institution_id, :colleges_attributes
  belongs_to :instituition
  has_many :colleges, dependent: :destroy
  accepts_nested_attributes_for :colleges, :allow_destroy => true
end
