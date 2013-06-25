class CreateUsercatalogs < ActiveRecord::Migration
  def change
    create_table :usercatalogs do |t|
      t.string :department
      t.integer :num
      t.integer :credits

      t.timestamps
    end
  end
end
