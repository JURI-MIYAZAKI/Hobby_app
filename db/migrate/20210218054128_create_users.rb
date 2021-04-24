class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :string
      t.string :introduction
      t.string :password_digest
      t.string :twitter_account
      t.string :image_name

      t.timestamps
    end
  end
end
