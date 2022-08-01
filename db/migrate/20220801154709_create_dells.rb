class CreateDells < ActiveRecord::Migration[7.0]
  def change
    create_table :dells do |t|
      t.string :name
      t.string :ram

      t.timestamps
    end
  end
end
