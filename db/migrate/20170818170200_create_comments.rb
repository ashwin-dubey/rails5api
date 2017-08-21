class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :description
      t.string :created_by
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
