class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :college
      t.string :department
      t.integer :num
      t.text :brief
      t.integer :gradecode
      t.integer :credits

      t.timestamps
    end
  end
end
