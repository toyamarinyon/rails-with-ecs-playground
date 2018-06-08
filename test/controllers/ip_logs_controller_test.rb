require 'test_helper'

class IpLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip_log = ip_logs(:one)
  end

  test "should get index" do
    get ip_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_ip_log_url
    assert_response :success
  end

  test "should create ip_log" do
    assert_difference('IpLog.count') do
      post ip_logs_url, params: { ip_log: { ip_address: @ip_log.ip_address } }
    end

    assert_redirected_to ip_log_url(IpLog.last)
  end

  test "should show ip_log" do
    get ip_log_url(@ip_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_ip_log_url(@ip_log)
    assert_response :success
  end

  test "should update ip_log" do
    patch ip_log_url(@ip_log), params: { ip_log: { ip_address: @ip_log.ip_address } }
    assert_redirected_to ip_log_url(@ip_log)
  end

  test "should destroy ip_log" do
    assert_difference('IpLog.count', -1) do
      delete ip_log_url(@ip_log)
    end

    assert_redirected_to ip_logs_url
  end
end
