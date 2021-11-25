class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def fullcalendar
    @sport_class = SportClass.last
    @time_slot = TimeSlot.new(
      level: @sport_class.level,
      group_size: @sport_class.group_size,
      price: @sport_class.price,
      name: @sport_class.name,
      description: @sport_class.description,
      address1: @sport_class.address1,
      address2: @sport_class.address2,
      post_code: @sport_class.post_code,
      town: @sport_class.town
    )

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
        start: '2021-11-26T08:00:00+01:00',
        end: '2021-11-26T9:30:00+01:00'
      }
    ]
  end
end
