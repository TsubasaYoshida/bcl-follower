module ApplicationHelper
  def format_math_sign(value)
    if value.nil?
      '-'
    elsif value > 0
      "+#{value}"
    elsif value == 0
      "±#{value}"
    else
      value
    end
  end

  def get_this_year
    Time.now.year
  end
end
