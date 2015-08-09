class Show < ActiveRecord::Base
  belongs_to :venue

  def self.next
    current.first
  end

  def self.current
    Show.where('starts_at >= current_timestamp').order(starts_at: :asc)
  end

  def self.past
    Show.where('starts_at < current_timestamp').order(starts_at: :asc)
  end
end
