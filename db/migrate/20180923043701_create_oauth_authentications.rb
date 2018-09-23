class CreateOauthAuthentications < ActiveRecord::Migration[5.2]
  def change
    create_table :oauth_authentications do |t|
      t.references :user, null: false
      t.string   :uid, null: false
      t.text     :credentials, null: false
      t.timestamps null: false
      t.index %i(user_id uid), unique: true
    end
  end
end
