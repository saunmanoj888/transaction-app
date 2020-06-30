require "application_system_test_case"

class BeneficiariesTest < ApplicationSystemTestCase
  setup do
    @beneficiary = beneficiaries(:one)
  end

  test "visiting the index" do
    visit beneficiaries_url
    assert_selector "h1", text: "Beneficiaries"
  end

  test "creating a Beneficiary" do
    visit beneficiaries_url
    click_on "New Beneficiary"

    fill_in "Account number", with: @beneficiary.account_number
    fill_in "Ifsc code", with: @beneficiary.ifsc_code
    fill_in "Nick name", with: @beneficiary.nick_name
    fill_in "User", with: @beneficiary.user_id
    click_on "Create Beneficiary"

    assert_text "Beneficiary was successfully created"
    click_on "Back"
  end

  test "updating a Beneficiary" do
    visit beneficiaries_url
    click_on "Edit", match: :first

    fill_in "Account number", with: @beneficiary.account_number
    fill_in "Ifsc code", with: @beneficiary.ifsc_code
    fill_in "Nick name", with: @beneficiary.nick_name
    fill_in "User", with: @beneficiary.user_id
    click_on "Update Beneficiary"

    assert_text "Beneficiary was successfully updated"
    click_on "Back"
  end

  test "destroying a Beneficiary" do
    visit beneficiaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beneficiary was successfully destroyed"
  end
end
