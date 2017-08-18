class CreateBangRegis < ActiveRecord::Migration
  def change
    create_table :bang_regis do |t|
      t.belongs_to :bang, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
