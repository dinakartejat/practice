class CreateFlipkarts < ActiveRecord::Migration[7.0]
  def change
    create_table :flipkarts do |t|
      t.string :username
      t.integer :password

      t.timestamps
    end
  end
end
,
