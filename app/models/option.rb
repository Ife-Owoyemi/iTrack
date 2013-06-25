class Option < ActiveRecord::Base
  attr_accessible :cgoal, :hgoal, :opreq_id, :optionname, :ocourses_attributes
  belongs_to :opreq
  has_many :ocourses, dependent: :destroy
  accepts_nested_attributes_for :ocourses, :allow_destroy => true

end
