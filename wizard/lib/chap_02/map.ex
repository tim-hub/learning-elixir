defmodule Wizard.Map do
  @moduledoc """
  This module contains functions for learning about data types in Elixir.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

  @doc """
  The Kernel function `is_atom` will return true if the argument it receives
  is an atom
  """
  def atoms() do
    IO.puts ":ok is an atom? #{is_atom(:ok)}"
    IO.puts "false is an atom? #{is_atom(false)}"
    IO.puts "nil is an atom? #{is_atom(nil)}"
    IO.puts "atom name with quotation marks? #{is_atom(:"space atom!")}"
    IO.puts ":Proton == :Proton? #{:Proton == :Proton}"
    IO.puts ":neutron == :positron? #{:neutron == :positron}"
    IO.inspect(charm("good"), label: "Function success")
    IO.inspect(charm("bad"), label: "Function success")
    IO.puts "Erlang pi: #{:math.pi()}"
    {:ok, "Atoms!"}
  end

  def charm(type) do
    if type == "good" do
      {:ok, "luck"}
    else
      {:error, "curse"}
    end
  end

  @doc """
  Tuples are fixed but fast containers.

  The Kernel function `is_tuple` will return true if the argument it receives
  is an tuple
  """
  def tuples() do
    t = {:hex, 6, "six"}

    IO.inspect "#{is_tuple(charm("good"))}"
    IO.inspect t
    IO.inspect(tuple_size(t), label: "Tuple size")
    IO.inspect Tuple.append(t, :spell)

    new_tuple =  Tuple.insert_at(t, 1, :"abbra cadabra")

    IO.inspect new_tuple
    IO.inspect put_elem(new_tuple, 3, 3)
    {:ok, "Tuples!"}
  end

  @doc """
  The Kernel function `is_list` will return true if the argument it receives
  is an list
  """
  def lists() do
    ingredients = ["bismuth", 86, {:ok, "copper"}]

    IO.inspect([:gold | ingredients], label: "Prepend [:gold | ingredients]")
    IO.inspect(ingredients ++ [:gold], label: "Append ingredients ++ [:gold]")
    IO.inspect([12, 6, 54] ++ [100, 12], label: "[12, 6, 54] ++ [100, 12]")
    IO.inspect([12, 100, 6] -- ["100", 12], label: "[12, 100, 6] -- [\"100\", 12]")
    IO.inspect(hd(ingredients), label: "hd([\"bismuth\", 86, {:ok, \"copper\"}])")
    IO.inspect(tl(ingredients), label: "tl([\"bismuth\", 86, {:ok, \"copper\"}])")
    IO.inspect(length(ingredients), label: "length([\"bismuth\", 86, {:ok, \"copper\"}])")
    {:ok, "Lists!"}
  end

  def keyword_lists() do
    keyword_list =  [a: "atom", a: "alchemy", b: "bat"]

    IO.inspect(keyword_list, label: "Keyword List")
    IO.inspect(Keyword.get(keyword_list, :a), label: "Keyword.get/3")
    IO.inspect(Keyword.get_values(keyword_list, :a), label: "Keyword.get_values/2")

    {:ok, "Keyword Lists!"}
  end

"""
#iex> atlas = %{:direction => "north", 25 => 50,  :compass => "rose"}
    %{25 => 50, :compass => "rose", :direction => "north"}

    #atlas[25]

    %{atlas | direction: "east"}
    %{25 => 50, :compass => "rose", :direction => "east"}

    atlas.direction
    "north"

    atlas.distance
    #** (KeyError) key :distance not found in: %{25 => 50, :compass => "rose", :direction => "north"}

    Map.get(atlas, :distance)
    nil
    Map.get(atlas, :direction)
    Map.get(%{"distance" => "20km"}, "distance")
    "20km"
    Map.get(%{"distance" => "20km"}, :distance)
    nil

"""
  def maps() do
    
    {:ok, "Maps!"}
  end

  # def rest() do
  #   my_str = "string"
  #   long_str = "long string"

  #   # Compare strings
  #   IO.puts "Equal : #{"Egg" === "egg"}"

  #   # Check if a string contains a string
  #   IO.puts "My ? #{String.contains?(my_str, "My")}"

  #   # Return first character
  #   IO.puts "First : #{String.first(my_str)}"

  #   # Get character at index
  #   IO.puts "Index 4 : #{String.at(my_str, 4)}"

  #   # Get a substring
  #   IO.puts "Substring : #{String.slice(my_str, 3, 8)}"

  #   # Split a string into a list
  #   # Inspect which prints the internal
  #   # representation of a value
  #   IO.inspect String.split(longer_str, " ")

  #   # Reverse a string
  #   IO.puts String.reverse(longer_str)

  #   # Uppercase
  #   IO.puts String.upcase(longer_str)

  #   # Lowercase
  #   IO.puts String.downcase(longer_str)

  #   # Capitalize
  #   IO.puts String.capitalize(longer_str)

  #   # Pipe output from one to another
  #   4 * 10 |> IO.puts

  #   # ----- MATH -----
  #   IO.puts "5 + 4 = #{5+4}"
  #   IO.puts "5 - 4 = #{5-4}"
  #   IO.puts "5 * 4 = #{5*4}"
  #   IO.puts "5 / 4 = #{5/4}"
  #   IO.puts "5 div 4 = #{div(5,4)}"
  #   IO.puts "5 rem 4 = #{rem(5,4)}"

  #   # ----- COMPARISON -----
  #   IO.puts "4 == 4.0 : #{4 == 4.0}"

  #   # Checks for equality of value and type
  #   IO.puts "4 === 4.0 : #{4 === 4.0}"

  #   IO.puts "4 != 4.0 : #{4 != 4.0}"

  #   # Checks for inequality of value and type
  #   IO.puts "4 !== 4.0 : #{4 == 4.0}"

  #   IO.puts "5 > 4 : #{5 > 4}"
  #   IO.puts "5 >= 4 : #{5 >= 4}"
  #   IO.puts "5 < 4 : #{5 < 4}"
  #   IO.puts "5 <= 4 : #{5 <= 4}"

  #   # Logical operators
  #   age = 16
  #   IO.puts "Vote & Drive : #{(age >= 16) and (age >= 18)}"

  #   IO.puts "Vote or Drive : #{(age >= 16) or (age >= 18)}"

  #   # Converts true to false vice versa
  #   IO.puts not true

  #   # ----- DECISION MAKING -----
  #   # If and Else
  #   if age >= 18 do
  #     IO.puts "Can Vote"
  #   else
  #     IO.puts "Can Wait"
  #   end

  #   # Unless
  #   unless age === 18 do
  #     IO.puts "You're not 18"
  #   else
  #     IO.puts "You're 18"
  #   end

  #   # Cond works like else if
  #   # it only hits the 1st match
  #   cond do
  #     age >= 14 -> IO.puts "You can wait"
  #     age >= 16 -> IO.puts "You can drive"
  #     age >= 18 -> IO.puts "You can vote"
  #     true -> IO.puts "Default"
  #   end

  #   # Case works like switch
  #   case 2 do
  #     1 -> IO.puts "Entered 1"
  #     2 -> IO.puts "Entered 2"
  #     _ -> IO.puts "Default"
  #   end

  #   # Ternary operator
  #   IO.puts "Ternary : #{if age > 18, do: "Can Vote", else: "Can't Vote"}"

  #   # ----- TUPLES -----
  #   # Tuples normally have 2 to 4 values
  #   # They can hold any value
  #   # They aren't for enumerating, or
  #   # cycling through like lists
  #   # They ar for pattern matching

  #   # Create a tuple
  #   my_stats = {175, 6.25, :Derek}
  #   IO.puts "Tuple #{is_tuple(my_stats)}"

  #   # You can append values
  #   my_stats2 = Tuple.append(my_stats, 42)

  #   # Retrieve values by index
  #   IO.puts "Age #{elem(my_stats2, 3)}"

  #   # Get tuple size
  #   IO.puts "Size #{tuple_size(my_stats2)}"

  #   # Delete an index
  #   my_stats3 = Tuple.delete_at(my_stats2, 0)

  #   # Insert at an index
  #   my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)

  #   # Create a tuple with the same values
  #   # duplicated a number of times
  #   many_zeroes = Tuple.duplicate(0, 5)

  #   # You can use tuples for pattern matching
  #   {weight, height, name} = {175, 6.25, :Derek}
  #   IO.puts "Weight : #{weight}"

  #   # ----- LISTS -----
  #   # Lists contain lists of data of any data type
  #   list1 = [1,2,3]
  #   list2 = [4,5,6]

  #   # You can combine Lists
  #   list3 = list1 ++ list2

  #   # You can subtract Lists
  #   list4 = list3 -- list1

  #   # Verify if an item is in a list
  #   IO.puts 6 in list4

  #   # Separate the head and tail of list
  #   [head | tail] = list3
  #   IO.puts "Head : #{head}"

  #   # Write to the screen without a newline
  #   IO.write "Tail : "

  #   # To show the tail use inspect
  #   IO.inspect tail

  #   # Inspect which prints the internal
  #   # representation of a
  #   # value may give odd results
  #   IO.inspect [97,98]

  #   # You can force inspect to print as a list
  #   # like this
  #   IO.inspect [97,98], char_lists: :as_lists

  #   # Enum can enumerate over lists
  #   Enum.each tail, fn item ->
  #     IO.puts item
  #   end

  #   words = ["Random", "Words", "in a", "list"]
  #   Enum.each words, fn word ->
  #     IO.puts word
  #   end

  #   # We can use recursion to loop as well
  #   display_list(words)

  #   # Delete deletes the given item from a list
  #   IO.puts display_list(List.delete(words,"Random"))

  #   # Delete item at index
  #   IO.puts display_list(List.delete_at(words,1))

  #   # Insert item at index
  #   IO.puts display_list(List.insert_at(words,4, "Yeah"))

  #   # Get first item
  #   IO.puts List.first(words)

  #   # Get last item
  #   IO.puts List.last(words)

  #   # You can create lists of key value tuples
  #   my_stats5 = [name: "Derek", height: 6.25, weight: 175]

  #   # ----- MAPS -----
  #   # Maps hold collections of key value pairs
  #   capitals = %{"Alabama" => "Montgomery",
  #   "Alaska" => "Juneau", "Arizona" => "Phoenix"}

  #   # Retrieve values using the key
  #   IO.puts "Capital of Alaska is #{capitals["Alaska"]}"

  #   # You can use atoms as keys
  #   capitals2 = %{alabama: "Montgomery",
  #   alaska: "Juneau", arizona: "Phoenix"}

  #   IO.puts "Capital of Arizona is #{capitals2.arizona}"

  #   # Insert a key / value
  #   capitals3 = Dict.put_new(capitals, "Arkansas", "Big Rock")

  #   # ----- PATTERN MATCHING -----
  #   # With pattern matching we can retrieve
  #   # data from data structures

  #   [length, width] = [20, 30]
  #   IO.puts "Width : #{width}"

  #   # If you don't care about data use _
  #   [_, [_, a]] = [20, [30, 40]]
  #   IO.puts "Get Num : #{a}"

  #   # ----- ANONYMOUS FUNCTIONS -----
  #   # An anonymous function has no name and can
  #   # be passed to another function
  #   get_sum = fn (x, y) -> x + y end
  #   IO.puts "5 + 5 = #{get_sum.(5,5)}"

  #   # Shorthand of th above
  #   # Increment the parameter names by 1
  #   get_less = &(&1 - &2)
  #   IO.puts "7 - 6 = #{get_less.(7,6)}"

  #   # You can have functions except different
  #   # numbers of parameters
  #   add_sum = fn
  #     {x,y} -> IO.puts "#{x} + #{y} = #{x+y}"
  #     {x,y,z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
  #   end

  #   add_sum.({1,2})
  #   add_sum.({1,2,3})

  #   # You can set defaults for parameters
  #   IO.puts do_it()

  #   # ----- RECURSION -----
  #   # Recursion is the act of a function
  #   # calling itself
  #   IO.puts "Factorial of 3 : #{factorial(4)}"

  #   # ----- LOOPING -----
  #   # With most languages we loop by
  #   # incrementing or decrementing a value
  #   # Since all variables are immutable
  #   # in Elixir we use recursion to loop
  #   IO.puts "Sum : #{sum([1,2,3])}"

  #   # An Elixir for loop
  #   loop(5,1)

  #   # ----- ENUMERABLES -----
  #   # An enumerable can have its items
  #   # counted off

  #   # Check if all values are even
  #   IO.puts "Even List : #{Enum.all?([1,2,3],
  #   fn(n) -> rem(n,2) == 0 end)}"

  #   # Check if any items are even
  #   IO.puts "Even Item : #{Enum.any?([1,2,3],
  #   fn(n) -> rem(n,2) == 0 end)}"

  #   # Print out each item
  #   Enum.each([1,2,3], fn(n) -> IO.puts n end)

  #   # Double each value in a list
  #   dbl_list = Enum.map([1,2,3], fn(n) -> n * 2 end)
  #   IO.inspect dbl_list

  #   # Reduce down to a single value
  #   sum_vals = Enum.reduce([1,2,3], fn(n, sum) -> n + sum end)
  #   IO.puts "Sum : #{sum_vals}"

  #   IO.inspect Enum.uniq([1,2,2])

  #   # ----- LIST COMPREHENSIONS -----
  #   # Provides an additonal way to perform
  #   # actions on a list

  #   # Double every list item
  #   dbl_list2 = for n <- [1,2,3], do: n * 2
  #   IO.inspect dbl_list2

  #   # Create a list of evens
  #   even_list = for n <- [1,2,3,4], rem(n,2) == 0, do: n
  #   IO.inspect even_list

  #   # ----- EXCEPTION HANDLING -----
  #   # Allows us to handle errors

  #   err = try do
  #     5 / 0
  #   rescue
  #     ArithmeticError -> "Can't Divide by Zero"
  #   end

  #   IO.puts err

  #   # ----- CONCURRENCY -----
  #   # Running multiple blocks of code at once
  #   # Calling spawn starts a new process that
  #   # runs the code specified at an undefined
  #   # time

  #   # Spawn returns a Process ID (PID)
  #   spawn(fn() -> loop(50, 1) end)
  #   spawn(fn() -> loop(100, 50) end)

  #   # We can send messgaes between
  #   # processes

  #   # Send a message to this process
  #   # and receive it
  #   send(self(), {:french, "Bob"})

  #   receive do
  #     {:german, name} -> IO.puts "Guten tag #{name}"
  #     {:french, name} -> IO.puts "Bonjour #{name}"
  #     {:english, name} -> IO.puts "Hello #{name}"

  #   # If there is no matching message you can issue
  #   # a timeout like I did for 500 milliseconds
  #   after
  #     500 -> IO.puts "Times up"
  #   end

  # end

  # # ----- RECURSIVE FUNCTIONS -----

  # # Output list with recursion
  # def display_list([word|words]) do
  #   IO.puts word
  #   display_list(words)
  # end
  # def display_list([]), do: nil

  # # Calculate a factorial
  # def factorial(num) do

  #   # This will end the calling of
  #   # additional functions
  #   if num <= 1 do
  #     1
  #   else
  #     result = num * factorial(num - 1)
  #     result
  #   end
  # end

  # # 1st : result = 4 * factorial(3) = 4 * 6 = 24
  # # 2nd : result = 3 * factorial(2) = 3 * 2 = 6
  # # 3rd : result = 2 * factorial(1) = 2 * 1 = 2

  # # Demonstrate looping
  # # Sum values in a list
  # # Decide what happens if we get an empty list
  # def sum([]), do: 0

  # # Empty the list as we sum values
  # def sum([h|t]), do: h + sum(t)

  # # A Elixir for loop
  # # What happens if the 1st attribute is 0
  # def loop(0,_), do: nil

  # def loop(max, min) do
  #   if max < min do
  #     loop(0, min)
  #   else
  #     IO.puts "Num : #{max}"
  #     loop(max - 1, min)
  #   end
  # end

  # # ----- DEFINE DEFAULTS -----
  # # Define defaults with \\
  # def do_it(x \\ 1, y \\ 1) do
  #   x + y
  # end

end