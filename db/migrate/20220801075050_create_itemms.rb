class CreateItemms < ActiveRecord::Migration[7.0]
  def change
    create_table :itemms do |t|
      t.string :name

      t.timestamps
    end
  end
end
,
