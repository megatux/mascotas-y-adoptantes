class CreateAdopters < ActiveRecord::Migration
  def change
    create_table :adopters do |t|

      t.timestamps
    end
  end
end
