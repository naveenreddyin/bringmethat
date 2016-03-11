class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.string :title
      t.text :description
      t.string :country_travelling_to
      t.string :city_travelling_to
      t.float :amount
      t.references :currency, index: true, foreign_key: true
      t.integer :weight
      t.date :travel_date
      t.date :reaching_date
      t.time :reaching_time

      t.timestamps null: false
    end
  end
end
