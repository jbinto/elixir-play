defmodule Greeter do
  def for(name, greeting) do
    fn
      # Pin operator ^ below
      # Without it, it would take any /1 param
      # With it, it only takes a param matching the outer `name`
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you"
    end
  end
end

mr_buchanan = Greeter.for("Jesse", "Yo")

IO.puts mr_buchanan.("Jesse")
IO.puts mr_buchanan.("Dave")
