class Corereq < ActiveRecord::Base
  attr_accessible :corereqname, :specialty_id, :ccourses_attributes, :hgoal, :cgoal
  belongs_to :specialty
  has_many :ccourses, dependent: :destroy
  accepts_nested_attributes_for :ccourses, :allow_destroy => true

end
