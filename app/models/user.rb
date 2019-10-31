class User < ActiveRecord::Base
    has_many :study_notes
end