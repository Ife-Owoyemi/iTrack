class AddRowsToUsercatalog < ActiveRecord::Migration
  def change
  	add_column :usercatalogs, :user_id, :integer
  end
end
