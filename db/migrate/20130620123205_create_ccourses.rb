class CreateCcourses < ActiveRecord::Migration
  def change
    create_table :ccourses do |t|
      t.string :department
      t.integer :corereq_id
      t.integer :num

      t.timestamps
    end
  end
end
