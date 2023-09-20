defmodule EquipmentDetails do
  def get_equipment_list() do
    [:buku, :laptop, :kacamata, :handphone, :kipas_angin]
  end

  def item_details(:buku) do
    {3, :kg, 1}
  end

  def item_details(:laptop) do
    {16, :kg, 1}
  end

  def item_details(:kacamata) do
    {1, :kg, 16}
  end

  def item_details(:handphone) do
    {4, :kg, 1}
  end

  def item_details(:kipas_angin) do
    {2, :kg, 1}
  end

  def item_details(_other) do
    raise "uknown item"
  end
end
