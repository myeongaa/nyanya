class CreateSmallsorts < ActiveRecord::Migration
  def change
    create_table :smallsorts do |t|
      t.string :name
      t.integer :bigsort_id

      t.timestamps null: false
    end
  end
end
