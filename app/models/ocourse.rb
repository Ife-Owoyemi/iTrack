class Ocourse < ActiveRecord::Base
  attr_accessible :department, :num, :option_id
  belongs_to :option
end
