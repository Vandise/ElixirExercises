defmodule CharacterCounter do
  
  def get_input() do
    parse(IO.gets("What is the input? "))
  end
  
  def parse(input) do
    input = String.strip(input)
    case String.length(input) do
      0 ->
        get_input()
      _ ->
        format_message(input)
    end
  end
  
  def format_message(input) do
    "#{input} has #{String.length(input)} characters"
  end

end

ExUnit.start

defmodule CharacterCounterTest do
  use ExUnit.Case
  
  test "Returns a string when valid input is given" do
    output = CharacterCounter.parse("Squirrel")
    assert output == "Squirrel has 8 characters"
  end
  
end

IO.puts CharacterCounter.get_input()