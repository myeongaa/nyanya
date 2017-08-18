class CreateBigsorts < ActiveRecord::Migration
  def change
    create_table :bigsorts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
