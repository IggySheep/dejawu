class AddBearbeiterToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :ansprech, :string
    add_column :projects, :kunde, :string
    add_column :projects, :befund, :string
  end
end
