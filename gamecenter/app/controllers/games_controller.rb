class GamesController < ApplicationController
  before_action :authenticate_user! 

  def answer
  end

  def push
  end

  # 魔王への扉
  # どんなに勝っても１しか増えず、悪魔に勝ってから戦っても１にならないようにしたい
  def open
    current_user.status = 1
    current_user.save
    redirect_to action: "answer" 
  end
end
