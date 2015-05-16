# Elixir notes

* `brew install elixir` to get started
* `iex` to start the interactive shell
* `h()` to get help
* Notation for function arguments is `div/2`, `h/0`, etc. The part after the `/` is the number of args.
* You can retreive historical statements using `v/1`, e.g `v -1` for previous statement

Weird calling syntax, `.()`:

```
double = fn(n) -> n * 2 end
double(2)    # syntax error!
double.(2)   # 4
```

Another shortcut for anonymous functions is called the *capture operator*. Arguments are accessible through positions e.g. `&1`, `&2`

```
double = &(&1 * 2)
```

Code is in `.ex` files.

```
def foo(bar) do
	4*bar
end
```

Or the one-liner:

```
def foo(bar), do: 4*bar
```

Compile a file:

```
c("drop.ex")
```
