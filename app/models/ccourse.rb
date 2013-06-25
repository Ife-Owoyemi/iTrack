class Ccourse < ActiveRecord::Base
  attr_accessible :corereq_id, :department, :num
  belongs_to :corereq
end
