class Catalog < ActiveRecord::Base
  attr_accessible :brief, :college, :credits, :department, :gradecode, :num
end
