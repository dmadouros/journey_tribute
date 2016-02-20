class ShowTimeDecorator < Draper::Decorator

  def date
    return unless object.starts_at.present?

    object.starts_at.strftime('%A, %B %e, %Y')
  end

  def time
    return unless object.starts_at.present?

    "#{object.starts_at.strftime('%-l:%M%P')} - #{object.ends_at.strftime('%-l:%M%P')}"
  end
end
