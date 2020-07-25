class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.time :duration
      t.datetime :date_time_movie

      t.timestamps
    end
  end
end
