class AddPictureToCine < ActiveRecord::Migration[6.0]
  def change
    add_column :cines, :picture, :string
  end
end
