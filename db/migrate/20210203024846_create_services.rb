class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description
      t.string :type
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
