class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
