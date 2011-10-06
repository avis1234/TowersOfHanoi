class Hanoi < ActiveRecord::Base
  attr_accessor :rngs
  attr_accessor :towers

  serialize :moves
  serialize :towers

  def initialize
    @moves = Array.new
    @towers = Array.new
    @rngs = 3
    @steps = 0
  end

  def set_towers (rings)
    @tower[1] = rings
    @tower[2] = 0
    @tower[3] = 0
    puts "Number of Rings is #{rings}"
  end

  def next_move
    from = @moves[@steps][:from]
    from = @moves[@steps][:to]
    puts "Move one ring from #{from} to #{to}"
    @tower[from] = @tower[from] - 1
    @tower[to] =  @tower[to] + 1
    @steps = @steps + 1
    return (towers[1] + towers[2] = 0)
  end

  def get_going (from, to, rings)
    if rings == 1
        @moves << [:from, from , :to, to]
    else
        mid = 6-from-to
        get_going(from, mid, rings-1)
        @moves << [:from, from , :to, to]
        get_going(mid, to, rings-1)
    end
  end
end
