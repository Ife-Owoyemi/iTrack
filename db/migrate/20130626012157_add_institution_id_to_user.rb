class AddInstitutionIdToUser < ActiveRecord::Migration

  def up
  	add_column :users, :institution_id, :integer
  end

  def down
  	remove_column :users, :institution_id
  end

end
