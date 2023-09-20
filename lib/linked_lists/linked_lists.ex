defmodule LinkedLists do
  @moduledoc """
  This module provides functions for working with linked lists.

  A linked list is a data structure that consists of a sequence of elements,
  where each element points to the next element in the sequence.

  The functions provided in this module include operations for adding, removing,
  and checking items in a linked list.
  """

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.get_equipment_lists()
  ["Buku", "Pensil", "Spidol", "Penghapus"]
  """

  def get_equipment_lists() do
    ["Buku", "Pensil", "Spidol", "Penghapus"]
  end

  @spec get_first_lists(nonempty_maybe_improper_list) :: any
  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.get_first_lists(list)
  ["Buku"]
  """
  def get_first_lists(list) do
    hd(list)
  end

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.remove_first_lists(list)
  ["Pensil", "Spidol", "Penghapus"]
  """
  def remove_first_lists(list) do
    tl(list)
  end

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.add_slow(list, "Kacamata")
  ["Buku", "Pensil", "Spidol", "Penghapus", "Kacamata"]
  """
  def add_slow(list, value) do
    list ++ [value]
  end

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.add_fast()
  ["Buku", "Pensil", "Spidol", "Penghapus", "Kacamata"]
  """
  def add_fast(list, value) do
    [value | Enum.reverse(list)]
    |> Enum.reverse()
  end

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.remove_items(list, 0)
  ["Pensil", "Spidol", "Penghapus"]
  """
  def remove_items(list, index) do
    List.delete_at(list, index)
  end

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.equipment_count(list)
  4
  """
  def equipment_count(list) do
    length(list)
  end

  @doc """
  Returns a list of equipment names.

  This function returns a list of equipment names including "Buku", "Pensil",
  "Spidol", and "Penghapus".

  ## Examples

  ```elixir
  iex> LinkedLists.check_for_item(list, "kacamata")
  true
  """
  def check_for_item(list, item) do
    item = String.downcase(item)
    list = Enum.map(list, &String.downcase/1)
    Enum.member?(list, item)
  end
end
