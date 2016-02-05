class StaticPagesController < ApplicationController
  def home
  end

  def band
  end

  def details
    render layout: 'details'
  end
end
