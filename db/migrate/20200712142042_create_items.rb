class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :description
      t.integer :list_id
      t.integer :user_id

      t.timestamps
    end
  end
end
