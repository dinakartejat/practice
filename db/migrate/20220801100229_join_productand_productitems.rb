class JoinProductandProductitems < ActiveRecord::Migration[7.0]
  def change
    create_join_table :products, :productitems
  end
end
,
