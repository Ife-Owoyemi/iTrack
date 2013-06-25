class CreateAchievementnames < ActiveRecord::Migration
  def change
    create_table :achievementnames do |t|
      t.string :achievementname
      t.integer :college_id

      t.timestamps
    end
  end
end
