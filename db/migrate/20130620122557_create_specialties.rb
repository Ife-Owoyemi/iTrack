class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :specialty
      t.integer :achievementname_id

      t.timestamps
    end
  end
end
