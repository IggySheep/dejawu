class AddStartedAtToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :w0_started_at, :datetime
    add_column :projects, :w0_stopped_at, :datetime
  end
end
