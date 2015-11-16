# Ha! Looks the same as the first solution!
# though some solutions may be like:
#   IO.puts("Hello, #{String.strip(IO.gets("What is your name? "))}, nice to meet you!")

(fn(name) ->
  IO.puts "Hello, #{String.strip(name)}, nice to meet you!"
end
).(IO.gets("What is your name? "))