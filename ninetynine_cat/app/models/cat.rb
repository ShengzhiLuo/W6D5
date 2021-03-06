# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    validates :birth_date, presence: true
    validates :color, presence: true
    validates :name, presence: true
    validates :description, presence: true
    validates :sex, presence: true, inclusion: { in: %w(M F) }

    def age
        Time.now.year - birth_date.to_s[0..3].to_i
    end
end
