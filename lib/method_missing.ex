defmodule MethodMissing do
  defmacro __using__(_opts) do
    quote do
      def method_missing(_func, _args) do
      end

      def unquote(:"$handle_undefined_function")(func, args), do: method_missing(func, args)

      defoverridable [method_missing: 2]
    end
  end
end
