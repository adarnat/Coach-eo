class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user.present?
      @time_slots = TimeSlot.includes(:sport_class).where(sport_classes: { coach_id: current_user.id }).where("start_at BETWEEN ? and ?", Date.current.beginning_of_day, Date.current.end_of_day).sort_by{|ev| ev.start_at.strftime('%H:%M')}
    end
  end

  def fullcalendar
    @time_slots = TimeSlot.all
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

    @sport_classes = current_user.sport_classes
    @coach_time_slots = current_user.time_slots

    @events = [
      {
        id: 44,
        title: 'air yoga',
        start: '2021-11-25T08:00:00+00:00',
        end: '2021-11-25T11:30:00+00:00'
      },
      {
        id: 45,
        title: 'yoga',
        start: '2021-11-26T18:00:00+00:00',
        end: '2021-11-26T20:30:00+00:00'
      }
    ]

    @db_events = @coach_time_slots.map do |event|
      {
        id: event.id,
        description: "#{event.group_size} - #{event.price} - #{event.level}",
        title: event.name,
        start: event.start_at.strftime('%FT%T%:z'),
        end: event.end_at.strftime('%FT%T%:z')
      }
    end
  end
end
