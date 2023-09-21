defmodule GuardsTest do
  use ExUnit.Case

  test "type/1 returns :integer when the given value is an integer" do
    assert Guards.type(42) == :integer
  end

  test "type/1 returns :float when the given value is a float" do
    assert Guards.type(3.14) == :float
  end

  test "type/1 returns :not_number when the given value is not a number" do
    assert Guards.type("Yes") == :not_number
  end

  test "is_single_digit/1 returns true when the given value is an integer and less than 10" do
    assert Guards.is_single_digit(8) == true
  end

  test "is_single_digit/1 returns false when the given value is not an integer or is greater than or equal to 10" do
    assert Guards.is_single_digit(12) == false
    assert Guards.is_single_digit("Yes") == false
  end

  test "return_even_numbers/1 returns the provided value if it is an even number, otherwise returns :not_even" do
    assert Guards.return_even_numbers(4) == 4
    assert Guards.return_even_numbers(7) == :not_even
  end

  test "is_under_max_load?/2 returns true when the given load is less than or equal to the max load" do
    assert Guards.is_under_max_load?(50, 55) == true
  end

  test "is_under_max_load?/2 returns false when the given load is greater than the max load" do
    assert Guards.is_under_max_load?(60, 55) == false
  end

  test "is_under_max_load?/2 returns true when the given load is a number and less than or equal to the default max load" do
    assert Guards.is_under_max_load?(50) == true
  end

  test "is_under_max_load?/2 returns false when the given load is not a number or is greater than the default max load" do
    assert Guards.is_under_max_load?(60) == false
    assert Guards.is_under_max_load?("Yes") == false
  end
end
