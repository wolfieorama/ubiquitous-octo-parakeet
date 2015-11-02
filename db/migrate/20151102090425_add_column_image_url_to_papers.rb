class AddColumnImageUrlToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :image_url, :string
  end
end
