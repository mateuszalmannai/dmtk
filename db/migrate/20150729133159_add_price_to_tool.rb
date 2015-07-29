class AddPriceToTool < ActiveRecord::Migration
  def change
    add_column :tools, :price, :decimal
  end
end
