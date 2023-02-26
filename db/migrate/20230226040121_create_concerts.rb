class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.string :band
      t.string :location

      t.timestamps
    end
  end
end
