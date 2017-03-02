defmodule ActiveRecord do
  use MethodMissing

  def method_missing(func, args) do
    {func, args}
  end
end

defmodule MethodMissingTest do
  use ExUnit.Case

  doctest MethodMissing

  test "Can use method_missing" do
    assert {:all, []} == ActiveRecord.all()
    assert {:find_by, []} == ActiveRecord.find_by()
    assert {:all, []} == ActiveRecord.all()
  end
end
