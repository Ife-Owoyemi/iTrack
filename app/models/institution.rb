class Institution < ActiveRecord::Base
  attr_accessible :nickname, :title, :achievementtypes_attributes
  has_many :achievementtypes, dependent: :destroy

  accepts_nested_attributes_for :achievementtypes, :allow_destroy => true
end
