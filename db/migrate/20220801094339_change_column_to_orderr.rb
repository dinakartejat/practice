class ChangeColumnToOrderr < ActiveRecord::Migration[7.0]
  def change
    rename_column :orderrs, :customer_id, :customerr_id
  end
end
,
