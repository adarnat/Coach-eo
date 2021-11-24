import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';


const eventCoachReceive = (addInfo) => {
  console.log("je suis dans eventCoachReceive", addInfo)
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



    select: (selectionInfo) => {
      // console.log("JE SUIS LA2021-12-02", selectionInfo);
      // console.log(selectionInfo.start);
      // console.log(selectionInfo.end);
      console.log(selectionInfo.start);
      console.log(selectionInfo.end);
      const currentDate = selectionInfo.start.toISOString().substring(0, 10);
      const currentStartTime = selectionInfo.start.toISOString().substring(11, 16);
      const currentEndTime = selectionInfo.end.toISOString().substring(11, 16);
      console.log(currentStartTime, currentEndTime)
      document.getElementById('debut_time').value = currentStartTime;
      document.getElementById('ending_time').value = currentEndTime;
      console.log(currentDate)
      document.getElementById('date').value = currentDate
      $('#exampleModal').modal('show')

      // calendar.addEvent({
      //   title: "à remplir",
      //   start: selectionInfo.start,
      //   end: selectionInfo.end
      // })

    },
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,listWeek'
    },
    events: [
      { // this object will be "parsed" into an Event Object
        title: 'Yoga', // a property!
        start: '2021-11-25', // a property!
        end: '2021-11-26' // a property! ** see important note below about 'end' **
      }
    ]

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



      calendar.addEvent({
        title: "à remplir",
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
