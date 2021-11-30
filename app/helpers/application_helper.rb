module ApplicationHelper

  def humanize(date)
    l(date, format: '%A %d %B %Y')
  end

  def humanize_hours(date)
    date.strftime('%Hh%M')
  end
end
