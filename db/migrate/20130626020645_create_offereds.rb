class CreateOffereds < ActiveRecord::Migration
  def change
    create_table :offereds do |t|
      t.string :semester
      t.integer :year
      t.string :professor

      t.timestamps
    end
  end
end
