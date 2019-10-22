class CreateKundens < ActiveRecord::Migration[6.0]
  def change
    create_table :kundens do |t|
    	t.string :firma
    	t.string :strasse
    	t.integer :hausnummer
    	t.integer :postleitzahl
    	t.string :stadt

      t.timestamps
    end
  end
end
