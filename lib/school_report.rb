class SchoolReport

  def initialize
    @green_count = 0
    @amber_count = 0
    @red_count = 0
  end

  def report(grades)
    process_grades(grades)
    format_report(@green_count, @amber_count, @red_count)
  end
  
  
  private

  def process_grades(grades)
    arr = grades.split(", ")

    arr.each do |x|
      if x == "Green"
        @green_count += 1
      elsif x == "Amber"
        @amber_count += 1
      elsif x == "Red"
        @red_count += 1
      end
    end
  end

  def reset_count
    @green_count = 0
    @amber_count = 0
    @red_count = 0
  end

  def format_report(green, amber, red)
    reset_count
    "Green: #{green}\nAmber: #{amber}\nRed: #{red}"
  end
end
