module ApplicationHelper
  def humanize(date)
    date.strftime('%d-%m-%Y')
  end

  def humanize_hours(date)
    date.strftime('%Hh%M')
  end
end
