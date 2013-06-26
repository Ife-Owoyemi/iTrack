class AddHourReqToAchievementname < ActiveRecord::Migration

  def up
  	add_column :achievementnames, :hourreq, :integer
  end

  def down
  	remove_column :achievementnames, :hourreq
  end

end
