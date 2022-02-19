class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.references :word, null: false, foreign_key: true
      t.string :additionword,     null:false
      t.timestamps
    end
  end
end
