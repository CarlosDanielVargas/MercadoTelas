require "application_system_test_case"

class WarehousesTest < ApplicationSystemTestCase
  setup do
    @warehouse = warehouses(:one)
  end

  test "visiting the index" do
    visit warehouses_url
    assert_selector "h1", text: "Warehouses"
  end

  test "should create warehouse" do
    visit warehouses_url
    click_on "New warehouse"

    fill_in "Name", with: @warehouse.name
    click_on "Create Warehouse"

    assert_text "Warehouse was successfully created"
    click_on "Back"
  end

  test "should update Warehouse" do
    visit warehouse_url(@warehouse)
    click_on "Edit this warehouse", match: :first

    fill_in "Name", with: @warehouse.name
    click_on "Update Warehouse"

    assert_text "Warehouse was successfully updated"
    click_on "Back"
  end

  test "should destroy Warehouse" do
    visit warehouse_url(@warehouse)
    click_on "Destroy this warehouse", match: :first

    assert_text "Warehouse was successfully destroyed"
  end
end
