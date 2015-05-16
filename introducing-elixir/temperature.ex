defmodule Temperature
  def c_to_f(c) do
    9/5*c + 32
  end

  def f_to_c(f), do: 5/9*c - 32
end