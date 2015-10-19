module ShowHelper
  def next_show_name(show)
    show.name.present? ? show_and_venue_name(show) : venue_name(show)
  end

  private

  def show_and_venue_name(show)
    show_name = content_tag :span, class: 'show-name' do
      show.name
    end

    venue_name = content_tag :span, class: 'venue-name' do
      show.venue.name
    end

    content_tag :strong, "#{show_name} (#{venue_name})".html_safe
  end

  def venue_name(show)
    venue_name = content_tag :span, class: 'venue-name' do
      show.venue.name
    end

    content_tag :strong, "#{venue_name}".html_safe
  end
end
