class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
