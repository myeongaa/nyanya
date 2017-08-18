class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to:bang
      t.string :content
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
