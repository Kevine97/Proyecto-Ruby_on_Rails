class AddCineToMovie < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :cine, foreign_key: true
  end
end
