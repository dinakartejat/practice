class CreateFbs < ActiveRecord::Migration[7.0]
  def change
    create_table :fbs do |t|
      t.string :firstname

      t.timestamps
    end
  end
end
,
