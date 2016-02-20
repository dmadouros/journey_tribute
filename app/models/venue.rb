class Venue < ActiveRecord::Base

  def google_query
    "#{address_1.gsub(" ", "+")},+#{city},+#{state}+#{zip_code}"
  end
end
