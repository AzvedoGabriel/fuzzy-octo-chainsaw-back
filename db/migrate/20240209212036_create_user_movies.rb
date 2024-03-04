class CreateUserMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :user_movies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
