class A < ActiveRecord::Migration[7.0]
  def change
    remove_column :item, :part_number, :string
    remove_column :products, :part_number, :string
  end
end
