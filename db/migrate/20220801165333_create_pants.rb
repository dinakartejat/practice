class CreatePants < ActiveRecord::Migration[7.0]
  def change
    create_table :pants do |t|
      t.string :name

      t.timestamps
    end
  end
end
