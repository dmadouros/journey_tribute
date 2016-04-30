class Show < ActiveRecord::Base
  belongs_to :venue
  has_many :additional_bands

  def self.next
    current.first
  end

  def self.current
    now = Time.current.in_time_zone("Mountain Time (US & Canada)").beginning_of_day

    Show.where('starts_at >= ?', now).order(starts_at: :asc)
  end

  def self.past
    now = Time.current.in_time_zone("Mountain Time (US & Canada)").beginning_of_day

    Show.where('starts_at < ?', now).order(starts_at: :desc)
  end
end
