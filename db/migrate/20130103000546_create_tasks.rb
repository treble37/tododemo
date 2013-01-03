class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.string :duedate
      t.integer :taskable_id
      t.string :taskable_type

      t.timestamps
    end
    add_index :tasks, [:taskable_id, :taskable_type]
  end
end
