class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text    :replycontent
      t.integer :board_id #
      t.timestamps null: false
    end
  end
end
