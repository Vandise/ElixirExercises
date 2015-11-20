defmodule QuotePrinter do
  
  defp get_input(msg) do 
    parse(IO.gets(msg), msg)
  end
  
  defp parse(input, msg) do
    input = String.strip(input)
    case String.length(input) do
      0 ->
        get_input(msg)
      _ ->
        input
    end
  end
  
  def init() do
    print_message get_input("What is the author?"), get_input("What is the quote?")
  end
  
  def print_message(quote, author) do
    "#{author} says \"#{quote}.\""
  end
  
end

IO.puts QuotePrinter.init()
