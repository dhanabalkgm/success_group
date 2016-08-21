class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, :phone, :email
      t.text :description
      t.timestamps null: false
    end
  end
end
