require 'securerandom'

class Helper
    def self.get_uuid_name(base_name)
        base_name + '__' + SecureRandom.hex(5)
    end

    def self.get_uuid()
        SecureRandom.hex(5)
    end

    def self.get_user_credentials(profile)
        credentials = { :admin => 'chelo.fm@gmail.com' }
        return credentials[profile.to_sym], "Control123"
    end
end