class AddImageFieldToPaper < ActiveRecord::Migration
  def change
    add_column :papers, :image, :String
  end
end
