defmodule Calculator do
  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)
    # dec_percent = BasicMath.divide(percentage, 100)
    # BasicMath.multiply(dec_percent, value)
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    |> BasicMath.roundup()
  end

  @spec find_distance_traveled(number, number) :: float
  def find_distance_traveled(speed, time) do
    speed
    |> BasicMath.multiply(time)
    |> BasicMath.roundup()
  end
end
