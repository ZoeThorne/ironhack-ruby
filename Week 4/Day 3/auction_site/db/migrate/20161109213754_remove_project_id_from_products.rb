class RemoveProjectIdFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :project_id, :integer
  end
end
