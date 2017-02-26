require 'csv'
require 'date'

# HELLO, RUBOCOP
class HomeTask2
  def initialize(file)
    @file = file
    @month = Array.new(12, 0)
    @temperature = Array.new(12, 0)
  end

  def run
    CSV.foreach(@file, headers: true, skip_blanks: true) do |row|
      m = row[0][3..4].to_i - 1
      @month[m] += 1
      @temperature[m] += row[1].to_i
    end
    average_value
  end

  def average_value
    puts 'Month    Average temperature'
    @temperature.each_with_index do |value, index|
      val = (value.to_f / @month[index].to_f)
      puts Date::MONTHNAMES[index + 1].to_s + "      #{val.round(1)}\n"
    end
  end
end

task = HomeTask2.new('temperature.csv')
task.run
