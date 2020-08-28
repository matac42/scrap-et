class AddContentToScraps < ActiveRecord::Migration[6.0]
  def change
    add_column :scraps, :content, :string
  end
end
