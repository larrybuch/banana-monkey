class CreateLists < ActiveRecord::Migration
  def change
    create_table :topic_items do |t|
      t.belongs_to :nugget, index: true
      t.belongs_to :topic, index: true
      t.timestamps null: false
    end
  end
end
