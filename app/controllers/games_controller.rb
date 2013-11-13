class GamesController < ApplicationController

  def home
    @number = session[:number].to_i + session[:old_number].to_i
    if @number > 20
      @score_class = 'its_over'
      elsif @number == 20
      @score_class = 'good_game'
      elsif @number >= 14
      @score_class = 'orange'
      elsif @number > 9
      @score_class = 'yellow'
    end

  end

  def add_sessions

    session[:number] = params[:number]
    session[:old_number] = params[:current_number]
    redirect_to root_url
  end

  def new_game
    reset_session

    redirect_to root_url
  end

end
