defmodule BasicMath do

  def add(param1, param2), do: param1 + param2

  def substract(param1, param2) do
    param1 - param2
  end

  def multiply(param1, param2) do
    param1 * param2
  end

  def divide(param1, param2) do
    param1 / param2
  end

  def roundup(value) do
    if is_integer(value) == true do
      round(value)
    else
      Float.ceil(value, 2)
    end
  end
end
