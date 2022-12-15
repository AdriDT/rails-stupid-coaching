class AnswerController < ApplicationController
  def answer
    @answer = params[:answer]
    @coach = ''

      if params[:answer].include?("?")
        @coach = "Silly question, get dressed and go to work!"
      elsif params[:answer].include?("I am going to work right now!")
        @coach = ""
      else
        @coach = "I don't care, get dressed and go to work!"
      end
  end
end
