# Outer scope
content = "Now is the time"

lp = with \
    {:ok, file} = File.open("/etc/passwd"),
    content = IO.read(file, :all),
    :ok = File.close(file),
    # `content` below doesn't clobber the outer scope
    [_, uid, gid] = Regex.run(~r{_lp:.*?:(\d+):(\d+)}, content)
  do
    "Group: #{gid}, User: #{uid}"
  end

IO.puts lp
IO.puts content # => still "Now is the time"

# `with` and pattern matching; and the `<-` operator

# The `<-` operator matches like `=`, but instead of raising
# MatchError, it returns the value that couldn't be matched.

# The [head|tail] operator allows you to extract the head
# of the list. head will be a value, tail will be another List.

with [a|_] = [1,2,3], do: IO.puts a    # => 1
with [a|_] <- [1,2,3], do: IO.puts a   # => 1

with [a|_] <- nil, do: IO.puts a  #  => nil

# with [a|_] = nil, do: IO.puts a
# => ** (MatchError) no match of right hand side value: nil

values = [24,28,29,24,28,29]

mean = with(
  count = Enum.count(values),
  sum = Enum.sum(values),
  do: sum/count
)

IO.puts mean


swap = fn { a,b } -> { b, a } end
swapped = swap.({ 10, 3 })
IO.puts inspect swapped


list_concat = fn a,b -> a++b end
sum = fn a,b,c -> a+b+c end           # How to do variadic functions?
pair_tuple_to_list = fn {a,b} -> [a,b] end
