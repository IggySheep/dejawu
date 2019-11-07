class AddKundenIdToKontakts < ActiveRecord::Migration[6.0]
  def change
    add_column :kontakts, :kunden_id, :integer
  end
end
