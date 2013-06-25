class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :title
      t.string :nickname

      t.timestamps
    end
  end
end
