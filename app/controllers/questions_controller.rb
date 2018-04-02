class QuestionsController < ApplicationController

  def ask
    @happy = "happy"
  end

  def answer
    @question = params[:question]

    case @question
    when "I AM GOING TO WORK RIGHT NOW!", "I am going to work right now!"
      @answer = ""
    end

    if @question.upcase.include? "?"
      @answer = "I can feel your motivation! Silly question, get dressed and go to work!"

    elsif @question == @question.upcase
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"

    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"

    elsif @question == @question.downcase
      @answer = "I don't care, get dressed and go to work!"

    else
      @answer = "Hello Coach!"
    end
  end
end
