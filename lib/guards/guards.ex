defmodule Guards do
  @moduledoc """
  This module provides functions for determining the type of a given value.
  """

  @doc """
  Determines if the given value is an integer.
  ## Examples

  iex> Guards.type(42)
  :integer

  iex> Guards.type(3.14)
  :float

  iex> Guards.type("Yes")
  :not_number
  """
  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when not is_number(value), do: :not_number

  @doc """
  Condition must be integer and value < 10
  ## Examples

  iex> Guards.is_single_digit(8)
  true

  iex> Guards.is_single_digit(12)
  false
  """
  def is_single_digit(value) when is_integer(value) and value < 10, do: true
  def is_single_digit(_), do: false

  @doc """
  Checks if a value is an even integer.

  This guard can be used to conditionally execute code based on whether a given
  value is an even integer or not.

  ## Examples

      iex> MyGuards.is_even(4)
      true

      iex> MyGuards.is_even(7)
      false

  ## Parameters

  - `value`: The value to be checked.

  ## Returns

  Returns `true` if the value is an even integer, otherwise `false`.

  """
  defguard is_even(value) when is_integer(value) and rem(value, 2) == 0

  # define default values in headers
  @doc """
  Returns the provided value if it is an even number, otherwise returns :not_even.

  This function checks if the given value is an even number and returns the value
  if it is, or `:not_even` if it's not.

  ## Examples

      iex> MyFunctions.return_even_numbers(4)
      4

      iex> MyFunctions.return_even_numbers(7)
      :not_even
  """
  def return_even_numbers(value \\ :not_even)
  def return_even_numbers(value) when is_even(value), do: value
  def return_even_numbers(_), do: :not_even

  @doc """
  Returns the provided value if it is an even number, otherwise returns :not_even.

  This function checks if the given value is an even number and returns the value
  if it is, or `:not_even` if it's not.

  ## Examples

      iex> MyFunctions.return_even_numbers(4)
      4

      iex> MyFunctions.return_even_numbers(7)
      :not_even
  """
  def is_under_max_load?(load, max_load \\ 55)
  def is_under_max_load?(load, max_load) when is_number(load) and load <= max_load, do: true
  def is_under_max_load?(load, max_load) when not is_number(load) or load > max_load, do: false
end
