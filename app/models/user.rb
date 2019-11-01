class User < ActiveRecord::Base
    has_many :study_notes
    has_secure_password

    validates :name, presence: true
    validates :email, uniqueness: true

end