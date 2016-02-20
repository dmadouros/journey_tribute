class AdditionalBandDecorator < Draper::Decorator
  delegate_all

  def date
    ShowTimeDecorator.decorate(object).date
  end

  def time
    ShowTimeDecorator.decorate(object).time
  end

  def name
    object.band.name
  end

  def web_address
    object.band.web_address
  end
end
