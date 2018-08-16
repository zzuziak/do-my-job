class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :message
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.integer :rating
      t.string :title

      t.timestamps
    end
  end
end
