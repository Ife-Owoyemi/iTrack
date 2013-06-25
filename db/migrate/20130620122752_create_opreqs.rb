class CreateOpreqs < ActiveRecord::Migration
  def change
    create_table :opreqs do |t|
      t.string :opreqname
      t.integer :specialty_id

      t.timestamps
    end
  end
end
