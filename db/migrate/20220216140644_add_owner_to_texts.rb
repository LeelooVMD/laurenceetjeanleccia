class AddOwnerToTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :texts, :owner, :string
  end
end
