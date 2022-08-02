class CreateSpotifies < ActiveRecord::Migration[7.0]
  def change
    create_table :spotifies do |t|
      t.string :gmail
      t.integer :password

      t.timestamps
    end
  end
end
,
