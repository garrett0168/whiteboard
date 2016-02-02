class Addcc < ActiveRecord::Migration
  def change
add_column :whiteboards, :updated, :string
  end
end
