defmodule Wizard.MixtureTest do
  use ExUnit.Case
  doctest Wizard

  test "First ready befopre second" do
    first = Wizard.Mixture.mix_time()
    second = Wizard.Mixture.mix_time()

    assert Timex.before?(first, second)
  end

  
end
