class AddColumnToPerson < ActiveRecord::Migration
  def change
  	add_column :people, :status, :integer, default: 0
  end
end
