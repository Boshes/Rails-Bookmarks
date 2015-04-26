class Bookmark < ActiveRecord::Base
  before_save :realurl
  has_one :category
  validates :name, :url, presence: true

  private
  def realurl
	  if self.url[0..7] == "http://"
		  self.url
	  elsif self.url[0..8] == "https://"
		  self.url
      else
        self.url = "http://" + self.url
      end
    end
  end
