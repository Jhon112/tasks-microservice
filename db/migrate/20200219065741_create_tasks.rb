class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :state
      t.text :user_id

      t.timestamps
    end
  end
end
