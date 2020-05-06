require 'pry'
class School
  attr_reader :start_time, :hours, :names

  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours
    @names = []
  end

  def hours_in_school_day
    @hours
  end

  def add_student_name(name)
    @names << name
  end

  def student_names
    @names
  end

  def end_time
    # binding.pry
    int_time = @start_time.to_i
    int_end_time = int_time + @hours
    return int_end_time.to_s << ":00"
  end

  def is_full_time?
    if @hours > 4
      return true
    end
  end

  def standard_student_names
    @names.map(&:capitalize)
  end

end
