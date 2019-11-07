class CreateKontakts < ActiveRecord::Migration[6.0]
  def change
    create_table :kontakts do |t|
      t.string :name
      t.string :vorname
      t.string :abteilung
      t.string :position
      t.string :telno
      t.string :faxno
      t.string :emai

      t.timestamps
    end
  end
end
