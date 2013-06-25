class AddRowsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :college, :string
  	add_column :users, :majors, :string
  	add_column :users, :gradyear, :integer
  	add_column :users, :minors, :string  	

  end
end
