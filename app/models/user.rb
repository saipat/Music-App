class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true}
    validates :password_digest, presence: { 'Password can\'t  be blank'}

    before_validation :ensure_session_token

    
end
