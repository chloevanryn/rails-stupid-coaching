class QuestionsController < ApplicationController

  def ask
    @question
  end

  def answer
    @display_question = params[:ask]
    if @display_question == 'I am going to work'
      @answer = 'Great!'
    elsif @display_question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
