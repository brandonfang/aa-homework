class User < ApplicationRecord
    validates :username, presence: true, uniqueness:true
    validates :session_token, presence: true, uniqueness:true
    validates :password_digest, presence: { message: "Password can't be blank"}
    validates :password, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user && BCrypt::Password.new(user.password_digest).is_password?(password)
            return user
        else 
            return nil
        end 
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end 


end
