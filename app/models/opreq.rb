class Opreq < ActiveRecord::Base
  attr_accessible :opreqname, :specialty_id, :options_attributes
  belongs_to :specialty
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options, :allow_destroy => true

end
