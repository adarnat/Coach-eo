import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';

const eventCoachReceive = (event) => {
  console.log("je suis dans eventCoachReceive", event)
}

const eventCoachDrop = (event) => {
  console.log("je suis dans eventCoachDrop", event)
}

const selectCoachInterval = (event) => {
  console.log("je suis dans selectCoachInterval", event)
}


const initCoachCalendar = () => {
  console.log("je suis dans initCoachCalendar")
  let calendarEl = document.getElementById('coach_calendar');
  console.log(calendarEl)
  if (!calendarEl)
    return

  console.log("je vais instancier un coach calendar")

  const calendar = new Calendar(calendarEl, {
    plugins: [dayGridPlugin, timeGridPlugin, listPlugin, interactionPlugin],
    hiddenDays: [0],
    droppable: true,
    editable: true,
    dayMaxEventRows: true,
    navLinks: true,
    eventStartEditable: true,
    eventDurationEditable: true,
    initialView: 'dayGridMonth',
    eventReceive: eventCoachReceive,
    eventDrop: eventCoachDrop,
    selectable: true,
    select: selectCoachInterval,
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,listWeek'
    },
    events: [],
    eventClick: onclick = (info) => {
      if (info && info.event) {
        const event = calendar.getEventById(info.event.id);
        console.log(info.event);
        if (confirm("Are you sure to remove " + info.event.title + " ?")) {
          event.remove();
          deleteUserShift(info.event.id)
        }
      }
    },
  });

  calendar.render()

}


const initClientCalendar = () => {
  console.log("je suis dans initClientCalendar")
  let calendarEl = document.getElementById('client_calendar');
  console.log(calendarEl)
  if (!calendarEl)
    return

  console.log("je vais instancier un client calendar")

  const events = JSON.parse(calendarEl.dataset.events);

  const calendar = new Calendar(calendarEl, {
    plugins: [timeGridPlugin, interactionPlugin],
    height: 500,
    initialView: 'timeGridWeek',
    selectable: true,
    events: events,
    select: (selectionInfo) => {
      // console.log("JE SUIS LA2021-12-02", selectionInfo);
      // console.log(selectionInfo.start);
      // console.log(selectionInfo.end);

      const number = prompt("Nombre de participants")

      // console.log("number:", number)

      calendar.addEvent({
        title: 'dynamic event',
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
