class AddColumnsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :active?, :boolean
  end
end
