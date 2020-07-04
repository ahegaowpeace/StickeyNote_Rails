class AddTitleToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :title, :text
  end
end
