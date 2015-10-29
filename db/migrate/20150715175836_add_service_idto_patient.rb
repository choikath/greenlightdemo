class AddServiceIdtoPatient < ActiveRecord::Migration
  def change
    add_column :patients, :service_id, :string
  end
end
