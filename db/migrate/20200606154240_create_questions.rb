class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :test, foreign_key: true
      t.integer :number
      t.string :comment

      t.timestamps
    end
  end
end
