class ParamsController < ApplicationController
  def param_1
    if params[:name][0].downcase == 'a'
      @message = "You're name starts with an 'A'!"
    else
      @message = params[:name].upcase
    end
  end

  def guess_game
    secret_number = 23
    if params[:guess].to_i > secret_number
      @message = 'Guess is too high!'
    elsif params[:guess].to_i < secret_number
      @message = 'Guess is too low!'
    else
      @message = "Correct! The secret number is #{secret_number}!"
    end
  end

  def counter
    #Counter.first.update(count += 1) if #something
  end

  def url_segment
    @message = params[:message]
  end
end
