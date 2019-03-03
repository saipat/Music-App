class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true}
    validates :password_digest, presence: { 'Password can\'t  be blank'}

    before_validation :ensure_session_token

    def self.find_by_credentials
    end

    def self.generate_session_token
        
    end

    def reset_session_token!
        
    end

    def ensure_session_token
        
    end

    def password=(password)
        
    end
end
