defmodule ControlFlowStructures do
  @moduledoc """
  Control Flow Structures
  """

  @doc """
  if conditional

  # Examples

  iex>ControlFlowStructures.check_max_flying_load(30)
  "Safe to fly!"

  iex>ControlFlowStructures.check_max_flying_load(60)
  "Too heavy to fly!"

  """
  def check_max_flying_load(load) do
    if load < 55, do: "Safe to fly!", else: "Too heavy to fly!"
  end

  @doc """
  if elseif

  # Examples

  iex>ControlFlowStructures.check_fuel_level(100)
  "full tank"

  iex>ControlFlowStructures.check_fuel_level(80)
  "3/4 tank"

  iex>ControlFlowStructures.check_fuel_level(10)
  "empty tank"

  """
  @spec check_fuel_level(any) :: <<_::64, _::_*8>>
  def check_fuel_level(percentase) do
    cond do
      percentase == 100 -> "full tank"
      percentase > 75 -> "3/4 tank"
      percentase > 50 -> "1/2 tank"
      percentase > 25 -> "1/4 tank"
      true -> "empty tank"
    end
  end

  @doc """
  catch response

  # Examples

  iex>ControlFlowStructures.error_code_check(200)
  :ok

  iex>ControlFlowStructures.error_code_check(201)
  :created

  iex>ControlFlowStructures.error_code_check(210)
  :unknown

  iex>ControlFlowStructures.error_code_check(300)
  :error
  """
  def error_code_check(value) do
    case value do
      200 -> :ok
      201 -> :created
      204 -> :no_content
      n when is_integer(n) and n > 299 -> :error
      _ -> :unknown
    end
  end

  defp convert_lb_to_kg(lb_value), do: lb_value / 2.2

  @doc """
  This function checks whether a piece of equipment is cleared for use. The equipment is cleared if it weighs less than 16 kilograms per unit. The unit type can be either :kg or :lb. If the unit type is :lb, the function converts the weight to kilograms before performing the check.

  # Examples
  iex> equipment_check({10, :kg, 1})
  :equipment_cleared

  iex> equipment_check({10, :lb, 1})
  :equipment_cleared

  iex> equipment_check({16, :kg, 1})
  :failed

  iex> equipment_check({16, :lb, 1})
  :failed

  iex> equipment_check({16, :kg, 2})
  :equipment_cleared
  """
  def equipment_check(equipment_tuple) do
    case equipment_tuple do
      {weight, unit_type, quantity} when weight / quantity < 16 and unit_type == :kg ->
        :equipment_cleared

      {weight, unit_type, quantity} when unit_type == :lb ->
        if convert_lb_to_kg(weight) / quantity < 16, do: :equipment_cleared, else: :failed

      _ ->
        :failed
    end
  end
end
