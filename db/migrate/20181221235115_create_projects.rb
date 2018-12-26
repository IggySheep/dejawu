class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :noInt
      t.string :noExt
      t.text :workTodo

      t.timestamps
    end
  end
end
