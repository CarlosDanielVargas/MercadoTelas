require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Brand", with: @item.brand_id
    fill_in "Conversion factor", with: @item.conversion_factor
    fill_in "Design", with: @item.design_id
    fill_in "Minimum stock", with: @item.minimum_stock
    fill_in "Name", with: @item.name
    fill_in "Size", with: @item.size
    fill_in "Subcategory", with: @item.subcategory_id
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Brand", with: @item.brand_id
    fill_in "Conversion factor", with: @item.conversion_factor
    fill_in "Design", with: @item.design_id
    fill_in "Minimum stock", with: @item.minimum_stock
    fill_in "Name", with: @item.name
    fill_in "Size", with: @item.size
    fill_in "Subcategory", with: @item.subcategory_id
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
