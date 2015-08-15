class AddMoreFieldsToTools < ActiveRecord::Migration
  def change
    add_column :tools, :comment, :text
    add_column :tools, :image_file_name, :string
  end
end
