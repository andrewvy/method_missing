# MethodMissing

Switched to Elixir and missed method_missing functionality in other languages?

This package is for you! It implements method_missing which you can bring into any other module!

## Usage

```elixir
defmodule Dog do
  use MethodMissing

  def method_missing(func, _args) do
    func_name = Atom.to_string(func)

    cond do
      Regex.match?(~r/bark|woof/, func_name) -> "WOOF"
      true -> "?"
    end
  end
end

Dog.bark()
> "WOOF"
Dog.woof()
> "WOOF"
Dog.meow()
> "?"

```

## Why?

`¯\_(ツ)_/¯`

If you like ~~weird~~ great things, check out https://github.com/wojtekmach/oop

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `method_missing` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:method_missing, "~> 0.1.0"}]
    end
    ```

  2. Ensure `method_missing` is started before your application:

    ```elixir
    def application do
      [applications: [:method_missing]]
    end
    ```

