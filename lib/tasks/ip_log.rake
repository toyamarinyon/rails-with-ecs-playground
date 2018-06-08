namespace :ip_log do
  desc "Create ip log resource"
  task create: :environment do
    res = Net::HTTP.start('ipinfo.io') do |http|
      http.get "/ip"
    end
    @ip_log = IpLog.create(ip_address: res.body.chomp)
  end

end
