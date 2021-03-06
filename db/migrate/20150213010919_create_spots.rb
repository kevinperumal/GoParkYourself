class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :sign_id
      t.integer :user_id
      t.datetime :parked_at
      t.boolean :remind?
      t.datetime :expiration
      t.string :full_address
      t.string :main_street
      t.decimal :latitude, :precision => 10, :scale => 6
      t.decimal :longitude, :precision => 10, :scale => 6

      t.timestamps
    end
  end
end
