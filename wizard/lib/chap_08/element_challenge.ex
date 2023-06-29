defmodule Wizard.ElementChallenge do
  @moduledoc """
  This is a module for practice to find heavy metal
  """


  defp isMetal(%{number: number}) do
    not Enum.member?([1, 6, 7, 8, 9, 10, 15, 16, 17, 18, 34, 35, 36, 53, 54, 85, 86], number) end

  defp isMetal(item) do
    false end



  def heavy_metal(nil) do
    :error end
  def heavy_metal([]) do
    :error end

  def heavy_metal(elements) do
    List.first(find_heavy_metal(elements, nil), 1)

  end

  defp find_heavy_metal([head | others], nil) do
    if isMetal(head) do
      find_heavy_metal(others, head)
    else
      find_heavy_metal(others, nil)
    end
  end

  defp find_heavy_metal([head | others], heavy_metal_element) do
    if isMetal(head) and head.number > heavy_metal_element.number do
      find_heavy_metal(others, head)
    else
      find_heavy_metal(others, heavy_metal_element)
    end
  end

  defp find_heavy_metal([], nil) do
    [:error]
  end

  defp find_heavy_metal([], heavy_metal_element) do
    [heavy_metal_element]
  end



end