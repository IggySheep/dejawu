class AddKundenId < ActiveRecord::Migration[6.0]
  def change
  	add_column :projects, :kunden_id, :string
  end
end
