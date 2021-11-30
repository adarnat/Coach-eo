import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin, {Draggable} from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';
import frLocale from '@fullcalendar/core/locales/fr';
import { fetchWithToken } from "./utils/fetch_with_token"; // to generate a token used in the fetch ()

let coachEvents;
let coachCalendar;
let coachCalendarEl;
const todaysDate = new Date;
console.log(todaysDate);

const eventCoachClick = (info) => {
  console.log("j'ai cliqué sur un event de coach calendar")
  console.log(info.event)
  $("#exampleModal").modal('show')
}

const createCoachCalendar = () => {
  coachCalendar = new Calendar(coachCalendarEl, {
    timeZone: 'Europe/Paris',
    plugins: [dayGridPlugin, timeGridPlugin, listPlugin, interactionPlugin],
    hiddenDays: [0],
    droppable: true,
    editable: true,
    dayMaxEventRows: true,
    navLinks: true,
    eventStartEditable: true,
    eventDurationEditable: true,
    initialView: 'timeGridWeek',
    selectable: true,
    businessHours: {
      daysOfWeek: [1, 2, 3, 4, 5],
      startTime: '8:00',
      endTime: '19:00'
    },
    locale: frLocale,
    height: 800,
    eventColor: '#3688d8',
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'timeGridWeek,listWeek'
    },
    events: coachEvents,
    eventConstraint: {
      start: todaysDate,
      end: '2100-01-01'
    },
    eventRender: function (calev, elt, view) {
      // var ntoday = new Date();
      if (calev.start._d.getTime() < todaysDate.getTime()) {
        elt.addClass("past");
        elt.children().addClass("past");
      }
    },
    eventClick: eventCoachClick,
    eventReceive: function(info) {
      console.log("eventReceive: ", info)
      createTimeSlot(info);
    },
    eventDrop: function (info) {
      console.log("Info eventDrop", info);
      console.log(info.event);


    }
  });
  coachCalendar.render()

  // window.calendar = coachCalendar
}

const initDragAndDrop = () => {
  const containerEl = document.getElementById('external-events');

  // new Draggable(containerEl, {
  //   itemSelector: '.fc-event',
  //   eventData: function (eventEl) {
  //     console.log('Event Element')
  //     console.log(eventEl)
  //     return {
  //       id: eventEl.dataset.id,
  //       title: eventEl.innerText
  //     };
  //   }
  // });


// JSON.parse(document.getElementById('sport-class').dataset.sportclass

  new Draggable(containerEl, {
    itemSelector: '.fc-event',
    eventData: function(eventEl) {
      const sportclassInfo = JSON.parse(eventEl.dataset.sportclass)
      // console.log(eventEl)
      return {
        title: sportclassInfo.name,
        duration: { milliseconds: sportclassInfo.duration * 60000 }
      }
    }
    });
}


const initCoachCalendar = () => {
  console.log("je suis initCoachCalendar")
  coachCalendarEl = document.getElementById('coach_calendar');
  if (coachCalendarEl) {
    coachEvents = JSON.parse(coachCalendarEl.dataset.events);
    console.log(coachEvents)
    createCoachCalendar()
    initDragAndDrop()
  }
}

const createTimeSlot = (info) => {
  const timeslotInfo = JSON.parse(info.draggedEl.dataset.sportclass)

  timeslotInfo.sport_class_id = timeslotInfo.id
  timeslotInfo.start_at = info.event.startStr
  delete timeslotInfo.id

  const test = fetchWithToken("/time_slots", {
    method: "POST",
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    },
    body: JSON.stringify({ time_slot: timeslotInfo })
  })
  .then(response => response.json())
  .then((data) => {
    info.event.setProp( "id", data.id )
  });
  console.log(test)
}

export { initCoachCalendar }
