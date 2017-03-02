defmodule MethodMissing do
  @defmodule """
  This module implements the method_missing feature in Elixir.

  To use, you will need to add `use MethodMissing` in your module.

  ```
  defmodule Dog do
    use MethodMissing

    def method_missing(func, _args) do
      func
      |> Atom.to_string()
      |> case do
        "bark" -> "WOOF"
        _ -> "?"
      end
    end
  end

  Dog.bark()
  > "WOOF"
  Dog.meow()
  > "?"
  ```
  """

  defmacro __using__(_opts) do
    quote do
      def method_missing(_func, _args) do
      end

      def unquote(:"$handle_undefined_function")(func, args), do: method_missing(func, args)

      defoverridable [method_missing: 2]
    end
  end
end
