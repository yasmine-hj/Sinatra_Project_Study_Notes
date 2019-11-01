class StudyNote < ActiveRecord::Base
    belongs_to :user

    validates :title, presence: true
    validates :body, presence: true
end