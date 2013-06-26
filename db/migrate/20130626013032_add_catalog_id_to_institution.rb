class AddCatalogIdToInstitution < ActiveRecord::Migration
	
  def up
  	add_column :institutions, :catalog_id, :integer
  end

  def down
  	remove_column :institutions, :catalog_id
  end

end
