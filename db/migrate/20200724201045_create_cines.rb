class CreateCines < ActiveRecord::Migration[6.0]
  def change
    create_table :cines do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end
