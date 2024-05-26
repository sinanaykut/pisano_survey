class CreateResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :responses do |t|
      t.references :question, null: false, foreign_key: true
      t.text :body
      t.references :option, null: false, foreign_key: true
      t.references :feedback, null: false, foreign_key: true

      t.timestamps
    end
  end
end
