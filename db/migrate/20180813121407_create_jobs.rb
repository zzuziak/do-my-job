class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.string :location
      t.text :description
      t.integer :price
      t.boolean :guided
      t.string :photo
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
