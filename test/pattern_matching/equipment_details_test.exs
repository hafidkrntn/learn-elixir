defmodule EquipmentDetailsTest do
  use ExUnit.Case

  test "get_equipment_list/0 returns a list of equipment" do
    expected_equipment_list = [:buku, :laptop, :kacamata, :handphone, :kipas_angin]
    assert EquipmentDetails.get_equipment_list() == expected_equipment_list
  end

  test "item_details/1 returns correct details for known items" do
    assert EquipmentDetails.item_details(:buku) == {3, :kg, 1}
    assert EquipmentDetails.item_details(:laptop) == {16, :kg, 1}
    assert EquipmentDetails.item_details(:kacamata) == {1, :kg, 16}
    assert EquipmentDetails.item_details(:handphone) == {4, :kg, 1}
    assert EquipmentDetails.item_details(:kipas_angin) == {2, :kg, 1}
  end
end
