class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      #t.저장할 내용의 형태 "비둘기 이름"
      t.string "erbtitle"
      t.string "erbcontent"
      t.string "erbdestination"





      t.timestamps null: false
    end
  end
end
