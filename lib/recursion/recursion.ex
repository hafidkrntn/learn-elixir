defmodule Recursion do
  @moduledoc """
  Documentation for `Recursion`.
  """

  def get_equipment_list() do
    ["Buku", "Kacamata", "Laptop", "Mouse", "Handphone"]
  end

  def loop([]), do: nil

  def loop([head | tail]) do
    # Do something with head
    IO.puts(head)
    loop(tail)
  end

  @doc """
  Returns a `length` of a `list`.

  Returns `integer`

  ## Parameters

  - list: list

  ## Examples

      iex> Recursion.equipment_count(["Buku", "Kacamata", "Laptop", "Mouse", "Handphone"])
      5

  """
  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

  @doc """
  Returns a formatted list.

  Returns `list`

  ## Parameters

  - list: list

  ## Examples

      iex> Recursion.format_equipment_list(["Buku", "Kacamata", "Laptop", "Mouse", "Handphone"])
      ["Buku", "Kacamata", "Laptop", "Mouse", "Handphone"]

  """
  def format_equipment_list([]), do: []

  def format_equipment_list([head | tail]) do
    [head |> format_string() | format_equipment_list(tail)]
  end

  @doc """
  Returns a formatted list.

  Returns `list`

  ## Parameters

  - list: list

  ## Examples

      iex> Recursion.format_equipment_list_map(["Buku", "Kacamata", "Laptop", "Mouse", "Handphone Dia"])
      ["buku", "kacamata", "laptop", "mouse", "handphone_dia"]

  """
  def format_equipment_list_map(list) do
    Enum.map(list, fn x ->
      x
      |> String.downcase()
      |> String.replace(" ", "_")
    end)
  end

  @doc """
  Returns a `count` of how many occurrences of a value appear in a `list`.

  Returns `integer`

  ## Parameters

  - list: list
  - value: any

  ## Examples

      iex> Recursion.occurrence_count("Buku", "Kacamata", "Laptop", "Mouse", "Handphone", "Buku")
      1

      iex> Recursion.occurrence_count("Buku", "Kacamata", "Laptop", "Mouse", "Handphone", "Laptop")
      400

      iex> Recursion.occurrence_count(["Buku", "Kacamata", "Laptop", "Mouse", "Handphone"], "Kacamata ")
      0

  """
  def occurrence_count([], _value), do: 0
  def occurrence_count([_head | _tail], "Snacks"), do: 400
  def occurrence_count([value | tail], value), do: 1 + occurrence_count(tail, value)
  def occurrence_count([_head | tail], value), do: occurrence_count(tail, value)

  @doc """
  Returns a formatted `list` of values that contain part of a `value`.

  Returns `list`

  ## Parameters

  - list: list
  - value: any

  ## Examples

      iex> Recursion.partial_occurrence(["Buku", "Kacamata", "Laptop", "Mouse", "Handphone Dia"], "Handphone Dia")
      ["handphone_dia"]

      iex> Recursion.partial_occurrence(["Buku", "Kacamata", "Laptop", "Dia Mouse", "Dia Handphone"], "Dia")
      ["dia_mouse", "dia_handphone"]

      iex> Recursion.partial_occurrence([]"Buku", "Kacamata", "Laptop", "Mouse", "Handphone Dia"], "lame")
      []

  """
  def partial_occurrence([], _value), do: []

  def partial_occurrence([head | tail], value) do
    if String.contains?(format_string(head), format_string(value)) do
      [format_string(head) | partial_occurrence(tail, value)]
    else
      partial_occurrence(tail, value)
    end
  end

  defp format_string(value) do
    value |> String.downcase() |> String.replace(" ", "_")
  end
end
