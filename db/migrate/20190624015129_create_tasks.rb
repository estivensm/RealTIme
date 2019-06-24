class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :user_task_id
      t.date :date_create
      t.date :date_finish
      t.integer :comment_id
      t.string :state

      t.timestamps
    end
  end
end
