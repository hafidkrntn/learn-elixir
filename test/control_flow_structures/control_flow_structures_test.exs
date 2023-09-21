defmodule ControlFlowStructuresTest do
  use ExUnit.Case

  describe "check_max_flying_load/1" do
    test "returns 'Safe to fly!' when load is less than 55" do
      assert ControlFlowStructures.check_max_flying_load(30) == "Safe to fly!"
    end

    test "returns 'Too heavy to fly!' when load is greater than or equal to 55" do
      assert ControlFlowStructures.check_max_flying_load(60) == "Too heavy to fly!"
    end
  end

  describe "check_fuel_level/1" do
    test "returns 'full tank' when percentase is 100" do
      assert ControlFlowStructures.check_fuel_level(100) == "full tank"
    end

    test "returns '3/4 tank' when percentase is greater than 75" do
      assert ControlFlowStructures.check_fuel_level(80) == "3/4 tank"
    end

    test "returns '1/2 tank' when percentase is greater than 50" do
      assert ControlFlowStructures.check_fuel_level(60) == "1/2 tank"
    end

    test "returns '1/4 tank' when percentase is greater than 25" do
      assert ControlFlowStructures.check_fuel_level(30) == "1/4 tank"
    end

    test "returns 'empty tank' when percentase is less than or equal to 25" do
      assert ControlFlowStructures.check_fuel_level(10) == "empty tank"
    end
  end

  describe "error_code_check/1" do
    test "returns :ok when value is 200" do
      assert ControlFlowStructures.error_code_check(200) == :ok
    end

    test "returns :created when value is 201" do
      assert ControlFlowStructures.error_code_check(201) == :created
    end

    test "returns :no_content when value is 204" do
      assert ControlFlowStructures.error_code_check(204) == :no_content
    end

    test "returns :error when value is greater than or equal to 300" do
      assert ControlFlowStructures.error_code_check(300) == :error
      assert ControlFlowStructures.error_code_check(400) == :error
    end

    test "returns :unknown for other values" do
      assert ControlFlowStructures.error_code_check(250) == :unknown
      assert ControlFlowStructures.error_code_check(100) == :unknown
    end
  end

  describe "equipment_check/1" do
    test "returns :equipment_cleared when weight is less than 16 kg per unit" do
      assert ControlFlowStructures.equipment_check({10, :kg, 1}) == :equipment_cleared
    end

    test "returns :equipment_cleared when weight in lb is less than 16 kg per unit" do
      assert ControlFlowStructures.equipment_check({10, :lb, 1}) == :equipment_cleared
    end

    test "returns :failed when weight is greater than or equal to 16 kg per unit" do
      assert ControlFlowStructures.equipment_check({16, :kg, 1}) == :failed
    end

    test "returns :failed when weight in lb is greater than or equal to 16 kg per unit" do
      assert ControlFlowStructures.equipment_check({16, :lb, 1}) == :failed
    end

    test "returns :equipment_cleared when weight is less than 16 kg per unit with multiple units" do
      assert ControlFlowStructures.equipment_check({16, :kg, 2}) == :equipment_cleared
    end
  end
end
