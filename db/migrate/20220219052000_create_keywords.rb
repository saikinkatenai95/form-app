class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.string :word,             null:false
      t.string :additionword,     null:false
      t.timestamps
    end
  end
end
