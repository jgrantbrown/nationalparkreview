class Account < ApplicationRecord
has_secure_password

def self.authenticate(account_info)
  account = Account.find_by(username: account_info[:username])
  account && account.authenticate(account_info[:password])
end

end
