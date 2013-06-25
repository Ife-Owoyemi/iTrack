class Usercatalog < ActiveRecord::Base
  attr_accessible :credits, :department, :num
  belongs_to :user

  validates :department, presence: true, length: { maximum: 4}
  validates :user_id, presence: true
end
