class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :artist, foreign_key: true
      t.string :name
      t.date :release
      t.string :info

      t.timestamps
    end
  end
end
