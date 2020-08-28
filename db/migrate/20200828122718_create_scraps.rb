class CreateScraps < ActiveRecord::Migration[6.0]
  def change
    create_table :scraps do |t|
      t.string :title

      t.timestamps
    end
  end
end
