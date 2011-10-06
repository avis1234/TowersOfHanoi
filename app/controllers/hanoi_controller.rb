class HanoiController < ApplicationController
  def index
      # default behaviour rendering erb or
      # call render ; redirect_to ; head
    @hanoi = Hanoi.new
    @time = Time.now
  end

  def set_rings
  end

  def start
    # get Hanoi instance from db
   @hn1 = Hanoi.new
   @hn1.rngs = params[:rngs]
    # number of rings in model already
    # call model to calculate all moves and populate list
   @hn1.get_going(1,3, @hn1.rngs)
   @hn1.save
    # view will draw rings on column A
    # gray Rings entry field, gray Start button, enable NEXT MOVE button
    # achieved by rendered view page

  end

  def next_move
    # Take needed operation for list
    # Activate View to draw move
    # if last move, enable Ring entry field and Start Button and Disable Next Move
  end

end
