class CreateHolonews < ActiveRecord::Migration[7.1]
  def change
    create_table :holonews do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
