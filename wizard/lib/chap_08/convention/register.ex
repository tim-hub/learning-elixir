defmodule Wizard.Con.Register do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  alias Wizard.Con.Guest
  alias Wizard.Con.EventSchedule, as: Schedule

  @doc """
  Register a new guest and display the schedule.
  """
  def new(name, specialty \\ "Curiousity") do
    Guest.new(name)
    |> Guest.add_specialty(specialty)
    |> Schedule.add()
    |> display()
  end

  defp display(guest) do
    IO.puts "#{guest.name}: master of #{guest.specialty}}"
    for event <- guest.events, do: IO.puts event
    "Let the magic begin!"
  end
end
