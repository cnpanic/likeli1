class ExpBoardController < ApplicationController
  def exp_index 
    @exps = Post.all
  end

  def exp_create
  end

  def exp_new
    
  end

  def exp_edit
  end

  def exp_destroy
  end
end
