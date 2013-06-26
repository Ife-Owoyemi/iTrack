class AddMoreAttributesToCatalog < ActiveRecord::Migration

  def up
    add_column :catalogs, :offered_id, :integer
    add_column :catalogs, :di, :boolean
    add_column :catalogs, :dii, :boolean
    add_column :catalogs, :diii, :boolean
  end

  def down
    remove_column :catalogs, :offered_id
    remove_column :catalogs, :di
    remove_column :catalogs, :dii
    remove_column :catalogs, :diii  	
  end

end
