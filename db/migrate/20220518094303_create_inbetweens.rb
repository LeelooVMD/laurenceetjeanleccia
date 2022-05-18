class CreateInbetweens < ActiveRecord::Migration[6.0]
  def change
    create_table :inbetweens do |t|
      t.references :pictures, null: false, foreign_key: true
      t.references :collections, null: false, foreign_key: true

      t.timestamps
    end
  end
end
