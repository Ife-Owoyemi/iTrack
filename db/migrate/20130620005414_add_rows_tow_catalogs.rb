class AddRowsTowCatalogs < ActiveRecord::Migration
  def change
  	add_column :catalogs, :name, :string
  end
end
