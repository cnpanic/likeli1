class CreateExps < ActiveRecord::Migration
  def change
    create_table :exps do |t|
      t.string "exp_title"
      t.string "exp_content"

#      t.string :exp_title
#      t.text   :exp_content

      t.timestamps null: false
    end
  end
end
