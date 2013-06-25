class CreateAchievementtypes < ActiveRecord::Migration
  def change
    create_table :achievementtypes do |t|
      t.string :achievementtype
      t.integer :institution_id

      t.timestamps
    end
  end
end
