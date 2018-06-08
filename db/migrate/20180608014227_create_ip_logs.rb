class CreateIpLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :ip_logs do |t|
      t.string :ip_address

      t.timestamps
    end
  end
end
