class Achievementname < ActiveRecord::Base
  attr_accessible :achievementname, :college_id, :specialties_attributes, :hourreq
  belongs_to :college
  has_many :specialties, dependent: :destroy
  accepts_nested_attributes_for :specialties, :allow_destroy => true
end
