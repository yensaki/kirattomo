class CreateMycharas < ActiveRecord::Migration[5.2]
  def change
    create_table :mycharas do |t|
      t.references :user, null: false, index: { unique: true }
      t.string :name, null: false, index: true
      t.timestamps null: false
    end
  end
end
