module ShipmentsHelper

  def date_display(ship_date)
    ship_date ? ship_date.strftime("%d/%m/%Y") : 'Not Set'
  end

  def place_display(user_detail)
    user_detail ? ([user_detail.locality, user_detail.city, user_detail.state].compact.uniq - [""]).join(', ') : "Not Set"
  end

end
