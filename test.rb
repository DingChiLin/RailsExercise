class Test

  def initialize(ttt)
    @ttt = ttt
  end

  def print
    puts @ttt
  end

  def print2
    puts ttt
  end

end

test = Test.new("HI Test")
test.print
test.print2
