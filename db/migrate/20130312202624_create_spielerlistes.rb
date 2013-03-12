class CreateSpielerlistes < ActiveRecord::Migration
  def change
    create_table :spielerlistes do |t|
      t.integer :nr
      t.string :name
      t.string :vorname
      t.string :position
      t.datetime :geburtsdatum

      t.timestamps
    end
  end
end
