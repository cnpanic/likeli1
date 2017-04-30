class Board < ActiveRecord::Base
    has_many :replies   
    validates :boardtitle, presence: { message: "제목이 비었습니다." }
end
