class Department < ApplicationRecord
    has_many :doctors # 医者との関連付け
end
