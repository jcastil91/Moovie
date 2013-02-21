class AddMoveIdColumnToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :movie_id, :integer
  end
end
