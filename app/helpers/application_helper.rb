module ApplicationHelper
  def format_math_sign(value)
    if value > 0
      "+#{value}"
    elsif value == 0
      "±#{value}"
    else
      value
    end
  end
end
