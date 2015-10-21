class AddImageFieldToPaper < ActiveRecord::Migration
  def change
    add_column :papers, :image, :url
  end
end
