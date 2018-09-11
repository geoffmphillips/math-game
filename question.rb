module Question
  module_function

  def generate_num
    rand(20).round
  end

  def generate_operator
    operator_array = ['+', '-', '*', '/']
    operator_array[rand(operator_array.length).round]
  end

  def operator_to_s operator
    output = nil
    case operator
    when "+"
      output = "plus"
    when "-"
      output = "minus"
    when "*"
      output = "multiplied by"
    when "/"
      output = "divided by"
    end
    output
  end

  def get_solution num1, num2, operator
    output = nil
    case operator
    when "+"
      output = num1 + num2
    when "-"
      output = num1 - num2
    when "*"
      output = num1 * num2
    when "/"
      output = num1 / num2
    end
    output
  end

  def is_correct? solution, user_answer
    solution == user_answer
  end
end
