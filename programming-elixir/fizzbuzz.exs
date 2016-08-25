binary_fizzbuzz = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,a -> a
end

IO.puts binary_fizzbuzz.(0,0,1)    # FizzBuzz
IO.puts binary_fizzbuzz.(0,1,1)    # Fizz
IO.puts binary_fizzbuzz.(1,0,1)    # Buzz
IO.puts binary_fizzbuzz.(1,1,1)    # 1


fizzbuzz = fn n ->
  binary_fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts fizzbuzz.(2)
IO.puts fizzbuzz.(3)
IO.puts fizzbuzz.(5)
IO.puts fizzbuzz.(15)
