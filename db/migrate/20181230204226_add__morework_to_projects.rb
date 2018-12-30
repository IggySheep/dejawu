class AddMoreworkToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :work, :string
    add_column :projects, :work1, :string
    add_column :projects, :work2, :string
    add_column :projects, :work3, :string
    add_column :projects, :work4, :string
    add_column :projects, :bearbeiter, :string
    add_column :projects, :liefTermn, :datetime
    add_column :projects, :warEing, :datetime
    add_column :projects, :ext, :string
    add_column :projects, :ext1, :string
    add_column :projects, :ext2, :string
    add_column :projects, :ext3, :string
  end
end
