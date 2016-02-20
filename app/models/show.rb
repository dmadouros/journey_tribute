class Show < ActiveRecord::Base
  belongs_to :venue
  has_many :additional_bands

  def self.next
    current.first
  end

  def self.current
    now = Date.today

    Show.where('starts_at >= ?', now - 1.day).order(starts_at: :asc)
  end

  def self.past
    Show.where('starts_at < ?', now - 1.day).order(starts_at: :desc)
  end
end
