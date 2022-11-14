class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer =  "you didn't say anything, blockhead!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else @question = "I don't care, get dressed and go to work!"
    end
  end
end
