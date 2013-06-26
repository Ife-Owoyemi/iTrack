class AddMoreAttributesToUserCatalog < ActiveRecord::Migration
  
  def up
    add_column :usercatalogs, :taken, :boolean
    add_column :usercatalogs, :taking, :boolean
    add_column :usercatalogs, :willTake, :boolean
    add_column :usercatalogs, :institution, :string
    add_column :usercatalogs, :dreamJob, :string  	
  end

  def down
    remove_column :usercatalogs, :taken
    remove_column :usercatalogs, :taking
    remove_column :usercatalogs, :willTake
    remove_column :usercatalogs, :institution
    remove_column :usercatalogs, :dreamJob    	
  end

end
