class CreateWhiteboards < ActiveRecord::Migration
  def change
    create_table :whiteboards do |t|
      t.string :pur_conv
      t.string :pur_fha
      t.string :pur_va
      t.string :pur_usda
      t.string :con_conv
      t.string :con_fha
      t.string :con_va
      t.string :con_usda
      t.string :refi_conv
      t.string :refi_fha
      t.string :refi_va
      t.string :refi_usda

      t.timestamps
    end
  end
end
