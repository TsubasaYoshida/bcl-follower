module ApplicationHelper
  def format_math_sign(value)
    "+#{value}" if value > 0
  end
end
