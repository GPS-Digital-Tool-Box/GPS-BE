class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username, unique: true
      t.string :google_token
      t.decimal :google_id
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
