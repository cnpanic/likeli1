class CafeController < ApplicationController 
      def cafe_index
        # Post.all =>  Board.all
        @boards = Board.all
      end
      
      def cafe_write
        #여기 Post.new => Board.new
        board = Board.new
        # 요부분 변수명 틀림
        board.boardtitle = params[:Boardtitle]
        board.boardcontent = params[:Boardcontent]
        
        
           if board.save
              #여기선 주소를 /cafe_index로 가게하는데 
              redirect_to "/cafe_index"                   
           else
                render :text => board.errors.messages[:boardtitle].first 
           end
           
   

      end
      
    def reply_write
      reply = Reply.new
      # 변수명 틀림
      reply.replycontent = params[:Boardcontent]
      reply.board_id = params[:id_of_post]
      reply.save
      
      redirect_to "/cafe_index"
    end
  
end
