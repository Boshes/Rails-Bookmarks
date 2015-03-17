class Bookmark < ActiveRecord::Base
  before_save :realurl
  has_one :category
  validates :name, :url, presence: true

  private
  def realurl
      self.url = "http://" + self.url + ".com"
  end

end
