(fn(name) ->
  IO.puts "Hello, #{String.strip(name)}, nice to meet you!"
end
).(IO.gets("What is your name? "))