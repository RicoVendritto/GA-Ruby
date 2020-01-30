def load_data

  account_numbers = []
  account_holders = []
  s_accounts = []
  c_accounts = []

  file = File.open(File.dirname(__FILE__) + "/bank.txt", 'r')

  file.each_line do |line|
    account_numbers << line.split(" ")[0].to_s
    account_holders << line.split(" ")[1].to_s
    s_accounts << line.split(" ")[2].to_s
    c_accounts << line.split(" ")[3].to_s
  end

  puts search_data(account_numbers, 10004)

end

def search_data(accounts, account_number)
  if accounts.include?(account_number.to_s)
    accounts.index(account_number.to_s) + 1
  else
    false
  end
end

load_data