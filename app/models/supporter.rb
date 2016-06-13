class Supporter < ActiveRecord::Base

  validates(:name, presence: true)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, format: VALID_EMAIL_REGEX
  validates :department, presence: true

  def self.search(str)
    where("name @@ :q OR message @@ :q OR department @@ :q OR email @@ :q", q: str)
  end

end
