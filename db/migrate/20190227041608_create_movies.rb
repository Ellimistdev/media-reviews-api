class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster_url
      t.integer :tmdb_id

      t.timestamps
    end
  end
end
