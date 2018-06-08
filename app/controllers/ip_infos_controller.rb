class IpInfosController < ApplicationController
  def show
    res = Net::HTTP.start('ipinfo.io') do |http|
      http.get "/ip"
    end
    @ipinfo_ip = res.body.chomp
  end
end
