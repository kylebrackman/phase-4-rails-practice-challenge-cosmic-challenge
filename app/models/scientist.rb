class Scientist < ActiveRecord::Base
    has_many :missions, dependent: :destroy
    has_many :planets, through: :missions
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :field_of_study, uniqueness: true
end
