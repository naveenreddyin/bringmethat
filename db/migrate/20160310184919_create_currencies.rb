class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :currency_code

      t.timestamps null: false
    end
  end
end
