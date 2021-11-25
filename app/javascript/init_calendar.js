import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin, {Draggable} from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';

let coachEvents;
let coachCalendar;
let coachCalendarEl

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
    initialView: 'dayGridMonth',
    selectable: true,
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,listWeek'
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
        title: eventEl.innerText.toLowerCase()
      };
    }
  });
}

const initCoachCalendar = () => {
  coachCalendarEl = document.getElementById('coach_calendar');
  if (coachCalendarEl) {
    coachEvents = JSON.parse(coachCalendarEl.dataset.events);
    createCoachCalendar()
    initDragAndDrop()
  }
}


const initClientCalendar = () => {
  console.log("je suis dans initClientCalendar")
  let calendarEl = document.getElementById('client_calendar');
  console.log(calendarEl)
  if (!calendarEl)
    return

  console.log("je vais instancier un client calendar")

  const events = JSON.parse(calendarEl.dataset.events);


const addSlotToCalendar = () => {
  date_slot = document.querySelector("#date")
  debut_time = document.querySelector("#debut_time")
  ending_time = document.querySelector("#ending_time")
}

  const calendar = new Calendar(calendarEl, {
    timeZone: 'Europe/Paris',
    plugins: [timeGridPlugin, interactionPlugin],
    height: 400,
    initialView: 'timeGridWeek',
    selectable: true,
    events: events,
    select: (selectionInfo) => {
      // console.log("JE SUIS LA2021-12-02", selectionInfo);
       console.log(selectionInfo.start);
       console.log(selectionInfo.end);
      const currentDate = selectionInfo.start.toISOString().substring(0, 10);
      const currentStartTime = selectionInfo.start.toISOString().substring(11, 16);
      const currentEndTime = selectionInfo.end.toISOString().substring(11, 16);
      console.log(currentStartTime, currentEndTime)
      document.getElementById('debut_time').value = currentStartTime;
      document.getElementById('ending_time').value = currentEndTime;


      const number = prompt("Nombre de participants")

      calendar.addEvent({
        title: number,
        start: selectionInfo.start,
        end: selectionInfo.end
      })
    },
    eventClick: function (info) {
      alert('Event: ' + info.event.title);
      alert('Coordinates: ' + info.jsEvent.pageX + ',' + info.jsEvent.pageY);
      alert('View: ' + info.view.type);



      // change the border color just for fun
      info.el.style.borderColor = 'red';
    }
  });
  calendar.render();
}




export { initCoachCalendar, initClientCalendar }
