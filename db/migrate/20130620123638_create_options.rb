class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :optionname
      t.integer :opreq_id
      t.integer :hgoal
      t.integer :cgoal

      t.timestamps
    end
  end
end
