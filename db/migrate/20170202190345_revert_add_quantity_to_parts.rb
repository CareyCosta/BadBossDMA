require_relative '20170202173958_add_quantity_to_parts'

class RevertAddQuantityToParts < ActiveRecord::Migration[5.0]
  def change
    revert AddQuantityToParts

    change_table(:parts) do |t|
      t.decimal :quantity
    end
  end
end
