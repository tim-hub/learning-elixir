defmodule Wizard.LogicExercise do
  @moduledoc """
  This an exercise module for you to use what you 
  have learned so far about data types and operators.

  Replace the nil value for all of the `answer_` variables 
  with a value that will make the corresponding `test_` 
  variable equal true.

  To test out your answers, recompile and call the function.

  iex> Wizard.LogicExercise.run()

  If your answers are correct, the function will return true. 
  If not, the function will return false.
  If you get a false, try again. If you get stuck you can 
  consult branch 03_02e.
  """

  def run() do
    answer_1 = 1
    test_1 = is_integer(answer_1)

    # replace the answer variable value with a value that will make the test variable equal true
    answer_2 = 1.0
    test_2 = is_float(answer_2)

    answer_3 = "confusing binary in elixir"
    test_3 = is_binary(answer_3)

    answer_4 = [1]
    test_4 = is_list(answer_4)

    answer_5 = true
    test_5 = true and answer_5

    answer_6 = true
    test_6 = nil || answer_6

    answer_7 = false
    test_7 = !answer_7

    answer_8 = 1
    test_8 = !is_atom(answer_8)

    answer_9 = :true
    test_9 = false or answer_9

    answer_10 = "1"
    test_10 = String.length(answer_10) && true

    answer_11 = %{"distance"  => "12a"}
    test_11 = Map.get(answer_11, "distance") && true

    test_1 && test_2 && test_3 && test_4 && test_5 && test_6 && test_7 && test_8 && test_9 && test_10 && test_11
  end
end
