require "application_system_test_case"

class IpLogsTest < ApplicationSystemTestCase
  setup do
    @ip_log = ip_logs(:one)
  end

  test "visiting the index" do
    visit ip_logs_url
    assert_selector "h1", text: "Ip Logs"
  end

  test "creating a Ip log" do
    visit ip_logs_url
    click_on "New Ip Log"

    fill_in "Ip Address", with: @ip_log.ip_address
    click_on "Create Ip log"

    assert_text "Ip log was successfully created"
    click_on "Back"
  end

  test "updating a Ip log" do
    visit ip_logs_url
    click_on "Edit", match: :first

    fill_in "Ip Address", with: @ip_log.ip_address
    click_on "Update Ip log"

    assert_text "Ip log was successfully updated"
    click_on "Back"
  end

  test "destroying a Ip log" do
    visit ip_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ip log was successfully destroyed"
  end
end
