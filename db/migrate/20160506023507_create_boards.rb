class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :boardtitle
      t.text :boardcontent
      
      t.timestamps null: false
    end
  end
end
