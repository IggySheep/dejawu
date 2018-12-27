class AddWorkToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :workTodo1, :string
    add_column :projects, :workTodo2, :string
    add_column :projects, :workTodo3, :string
    add_column :projects, :workTodo4, :string

end
end
