defmodule LinkedListsTest do
  use ExUnit.Case

  test "get_equipment_lists/0 returns a list of equipment names" do
    assert LinkedLists.get_equipment_lists() == ["Buku", "Pensil", "Spidol", "Penghapus"]
  end

  test "get_first_lists/1 returns the first element of a list" do
    list = ["Buku", "Pensil", "Spidol", "Penghapus"]
    assert LinkedLists.get_first_lists(list) == "Buku"
  end

  test "remove_first_lists/1 returns a list without the first element" do
    list = ["Buku", "Pensil", "Spidol", "Penghapus"]
    assert LinkedLists.remove_first_lists(list) == ["Pensil", "Spidol", "Penghapus"]
  end

  test "add_slow/2 adds an element to the end of a list" do
    list = ["Buku", "Pensil", "Spidol", "Penghapus"]

    assert LinkedLists.add_slow(list, "Kacamata") == [
             "Buku",
             "Pensil",
             "Spidol",
             "Penghapus",
             "Kacamata"
           ]
  end

  test "remove_items/3 removes an element from a list at a given index" do
    list = ["Buku", "Pensil", "Spidol", "Penghapus"]
    assert LinkedLists.remove_items(list, 0) == ["Pensil", "Spidol", "Penghapus"]
  end

  test "equipment_count/1 returns the number of elements in a list" do
    list = ["Buku", "Pensil", "Spidol", "Penghapus"]
    assert LinkedLists.equipment_count(list) == 4
  end
end
