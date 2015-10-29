class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :room
      t.string :initials
      t.text :estimatedate
      t.boolean :ptnotified
      t.boolean :dcsumm
      t.boolean :medrec
      t.boolean :appt
      t.boolean :amlabs
      t.boolean :ptorder
      t.boolean :homeo2
      t.boolean :tubefeeds
      t.boolean :walker
      t.boolean :otherequip
      t.boolean :homecare
      t.boolean :snfpsych
      t.boolean :transport
      t.boolean :teaching
      t.boolean :finassit
      t.boolean :conciergerx
      t.boolean :completedbymd

      t.timestamps null: false
    end
  end
end
