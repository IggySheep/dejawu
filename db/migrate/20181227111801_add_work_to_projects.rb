class AddWorkToProjects < ActiveRecord::Migration[5.2]
  def up
    add_column :projects, :workTodo1, :text
    add_column :projects, :workTodo2, :text
    add_column :projects, :workTodo3, :text
    add_column :projects, :workTodo4, :text

end

 



end
