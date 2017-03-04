# RUBOCOP
class HomeTask3
  def initialize(max)
    @max = max
  end

  def prime_array
    @arr = []
    (1..@max).each do |i|
      @arr << i if is_prime?(i)
    end
    output
  end

  private

  def prime?(num)
    return false if num <= 1
    Math.sqrt(num).to_i.downto(2).each { |i| return false if (num % i).zero? }
    true
  end

  def output
    p @arr
    (@arr.size - 1).times do
      p @arr.push(@arr.shift)
    end
  end
end

number = gets.to_i
hello = HomeTask3.new(number)
hello.prime_array
