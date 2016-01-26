class CreateNuggets < ActiveRecord::Migration
  def change
    create_table :nuggets do |t|
      t.belongs_to :user, null: false, index: true
      t.text :body, null: false
      t.timestamps null: false
    end
  end
end
