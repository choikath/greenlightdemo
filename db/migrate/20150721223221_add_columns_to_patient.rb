class AddColumnsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :noteToStaff, :text
  end
end
