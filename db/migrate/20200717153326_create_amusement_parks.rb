class CreateAmusementParks < ActiveRecord::Migration[5.1]
  def change
    create_table :amusement_parks do |t|
      t.string :name
      t.float :price
    end
  end
end
