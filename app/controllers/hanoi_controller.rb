class HanoiController < ApplicationController
  def index
      # default behaviour rendering erb or
      # call render ; redirect_to ; head
  end

  def set_rings
  end

  def start
    # get number of rings
    # call model to calculate all moves and populate list
    # view will draw rings on column A
    # gray Rings entry field
    # gray Start button
    # enable NEXT MOVE  button

  end

  def next_move
    # Take needed operation for list
    # Activate View to draw move
    # if last move, enable Ring entry field and Start Button and Disable Next Move
  end

end
