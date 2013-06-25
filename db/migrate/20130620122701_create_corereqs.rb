class CreateCorereqs < ActiveRecord::Migration
  def change
    create_table :corereqs do |t|
      t.string :corereqname
      t.integer :hgoal
      t.integer :cgoal
      t.integer :specialty_id

      t.timestamps
    end
  end
end
