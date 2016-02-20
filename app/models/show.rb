class Show < ActiveRecord::Base
  belongs_to :venue
  has_many :additional_bands

  def self.next
    current.first
  end

  def self.current
    now = Date.current.beginning_of_day

    Show.where('starts_at >= ?', now).order(starts_at: :asc)
  end

  def self.past
    now = Date.current.beginning_of_day

    Show.where('starts_at < ?', now).order(starts_at: :desc)
  end
end
