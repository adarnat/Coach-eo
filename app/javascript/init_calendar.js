import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin, {Draggable} from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';
import frLocale from '@fullcalendar/core/locales/fr';

let coachEvents;
let coachCalendar;
let coachCalendarEl;

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
    daysOfWeek: [1, 2, 3, 4, 5], // Monday - Thursday
    startTime: '8:00', // a start time (10am in this example)
    endTime: '19:00'},
    locale: frLocale,
    height: 700,
    eventColor: '#FFB20F',
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'timeGridWeek,listWeek'
    },
    events: coachEvents,
    eventClick: eventCoachClick
  });
  coachCalendar.render()
}

const initDragAndDrop = () => {
  const containerEl = document.getElementById('external-events');

  new Draggable(containerEl, {
    itemSelector: '.fc-event',
    eventData: function (eventEl) {
      return {
        title: eventEl.innerText
      };
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

export { initCoachCalendar }
