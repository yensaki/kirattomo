class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :follower_id, null: false
      t.integer :followee_id, null: false
      t.timestamps null: false
      t.index %i(follower_id followee_id), unique: true
      t.index :followee_id
    end
  end
end
