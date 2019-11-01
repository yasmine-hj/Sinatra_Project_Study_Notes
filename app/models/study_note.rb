class StudyNote < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :topic, presence: true
    validates :notes, presence: true
end