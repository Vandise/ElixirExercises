#
# Was curious to whether you can loop on IO.gets until something isn't empty
# though this seems to be a clean solution that could be testable
#   Since the seeding will be the same in a single run, a unit test could be done
#   assert_equal Greeter.msg("Ben"), "Hello, Ben, #{Greeter.random_msg}"
#

:random.seed(:erlang.now)

defmodule Greeter do

  def get_name do
    name = String.strip IO.gets("What is your name? ")
    case String.length(name) do
      0 ->
        get_name
      _ ->
        name
    end
  end
  
  def greet do
    msg(get_name)
  end
  
  def msg(name) do
    "Hello, #{name}, #{random_msg}"
  end
  
  def random_msg do
    Enum.random ["nice to meet you!","how's it going?","whaz up?!?"]
  end
  
end

IO.puts Greeter.greet