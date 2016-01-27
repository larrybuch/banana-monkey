class CreateTextMessages < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.text :body, null: false
      t.string :phone_number, null: false
      t.jsonb :data

      t.timestamps null: false
    end
  end
end
