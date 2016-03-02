class Subject < ActiveRecord::Base

    has_many :pages  #chg from has_one :page

	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted, lambda { order("subjects.position ASC") }  #disambiguated
	scope :newest_first, lambda { order("subjects.created_at DESC") }
    scope :search, lambda {|query|
      where(["name LIKE ?", "%#{query}%"])
    }
end
