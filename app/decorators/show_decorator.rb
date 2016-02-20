class ShowDecorator < Draper::Decorator
  delegate_all

  def date
    ShowTimeDecorator.decorate(object).date
  end

  def time
    ShowTimeDecorator.decorate(object).time
  end

  def name
    if (object.name.present? && object.venue.name.present?)
      "#{object.name} (#{object.venue.name})"
    elsif object.name.present?
      object.name
    elsif object.venue.name.present?
      object.venue.name
    end
  end
end
