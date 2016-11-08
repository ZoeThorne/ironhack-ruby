class AddFavouriteToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :favourite, :boolean
  end
end
