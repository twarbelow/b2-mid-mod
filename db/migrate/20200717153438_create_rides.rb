class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :name
      t.integer :thrill_rating
      t.references :park, foreign_key: true
    end
  end
end
