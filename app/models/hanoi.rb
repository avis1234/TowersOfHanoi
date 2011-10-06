class Hanoi < ActiveRecord::Base
  attr_accessor :rngs
  serialize :moves

  def initialize
    @moves = Array.new
    @rngs = 3
  end

  def get_going (from, to, rings)
    if rings == 1
        @moves << [from , to]
      else
        mid = 6-from-to
        get_going(from, mid, rings-1)
        @moves << [from , to]
        get_going(mid, to, rings-1)
      end
    end
end
