# Multiple function bodies
handle_open = fn
  {:ok, file} -> "Read data: #{IO.read file, :line}"
  {_, error} -> "Error: #{:file.format_error error}"
end

# n.b.
# `:file` is Erlang's file module
# `File` is Elixir's file module

IO.puts handle_open.(File.open("/usr/share/dict/words"))
IO.puts handle_open.(File.open("/usr/share/dict/xxx"))
