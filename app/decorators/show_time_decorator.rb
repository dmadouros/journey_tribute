class ShowTimeDecorator < Draper::Decorator

  def date
    object.starts_at.strftime('%A, %B %e, %Y')
  end

  def time
    "#{object.starts_at.strftime('%-l:%M%P')} - #{object.ends_at.strftime('%-l:%M%P')}"
  end
end
