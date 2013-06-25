class CreateOcourses < ActiveRecord::Migration
  def change
    create_table :ocourses do |t|
      t.string :department
      t.integer :option_id
      t.integer :num

      t.timestamps
    end
  end
end
