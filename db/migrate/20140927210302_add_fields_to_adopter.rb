class AddFieldsToAdopter < ActiveRecord::Migration
  def change
    add_column :adopters, :name, :string
    add_column :adopters, :score, :integer
    add_column :adopters, :description, :text
    add_column :adopters, :address, :text

    add_index :adopters, :name
    add_index :adopters, :score
  end
end
