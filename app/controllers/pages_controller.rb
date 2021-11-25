class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :fullcalendar ]

  def home
  end

  def fullcalendar
    @yoga_events = [
      {
        id: 44,
        title: 'yoga',
        start: '2021-11-25T08:00:00+01:00',
        end: '2021-11-25T11:30:00+01:00'
      },
      {
        id: 45,
        title: 'yoga',
        start: '2021-11-26T18:00:00+01:00',
        end: '2021-11-26T20:30:00+01:00'
      }
    ]
  end
end
