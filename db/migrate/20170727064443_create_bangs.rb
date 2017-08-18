class CreateBangs < ActiveRecord::Migration
  def change
    create_table :bangs do |t|
      t.integer :smallsort_id
      t.string :introduce
      t.string :title
      t.text :content
      t.integer :person_limit
      t.integer :king_id
      t.string :bang_date
      t.string :bang_time
      t.string :image_url
      t.timestamps null: false
    end
  end
end
