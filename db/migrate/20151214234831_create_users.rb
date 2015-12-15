class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :bio
      t.string :display_name
      t.string :email
      t.string :image_url
      t.boolean :partnered
      t.string :uid
      t.string :oauth_token

      t.timestamps null: false
    end
  end
end
