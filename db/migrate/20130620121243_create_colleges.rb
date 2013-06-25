class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :college
      t.integer :achievementtype_id

      t.timestamps
    end
  end
end
