class CreateShirts < ActiveRecord::Migration[7.0]
  def change
    create_table :shirts do |t|
      t.string :name

      t.timestamps
    end
  end
end
