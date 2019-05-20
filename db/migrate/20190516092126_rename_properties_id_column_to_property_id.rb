class RenamePropertiesIdColumnToPropertyId < ActiveRecord::Migration[5.0]
  def change
    rename_column :stations, :properties_id, :property_id
  end
end
