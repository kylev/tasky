class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.string :content
      t.boolean :finished
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end
