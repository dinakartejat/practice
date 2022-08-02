class CreateAmazonloginpages < ActiveRecord::Migration[7.0]
  def change
    create_table :amazonloginpages do |t|
      t.string :username
      t.string :lastname

      t.timestamps
    end
  end
end
,
