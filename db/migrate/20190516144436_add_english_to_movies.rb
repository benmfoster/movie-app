class AddEnglishToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :english, :boolean
  end
end
