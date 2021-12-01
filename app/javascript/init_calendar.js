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
    eventResizableFromStart:true,
    allDaySlot: false,
    slotDuration: '00:15:00',
    initialView: 'timeGridWeek',
    selectable: true,
    eventOverlap: false,
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
      right: 'timeGridWeek,dayGridMonth,listWeek'
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
    eventClick: function (info) {
      eventCoachClick(info.event.id)
    },
    eventReceive: function(info) {
      createTimeSlot(info);
    },
    eventDrop: function (info) {
      console.log("Info eventDrop", info);
      updateDraggedorResizedTimeSlot(info.event.id, info.event.startStr, info.event.endStr)
    },
    eventResize: function(info) {
      console.log("Info eventResize", info)
      updateDraggedorResizedTimeSlot(info.event.id, info.event.startStr, info.event.endStr)
    }
  });
  coachCalendar.render()

  // window.calendar = coachCalendar
}

const initDragAndDrop = () => {
  const containerEl = document.getElementById('external-events');

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

// const myMeth = async () => {
//   const response = await fetch()
//   const data = await response.json()
//   return data
//  }

//  const data = await myMeth()

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

  fetchWithToken("/time_slots", {
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
}

const updateDraggedorResizedTimeSlot = (id, startDate, endDate) => {
  fetchWithToken(`/time_slots/${id}`, {
    method: "PUT",
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    },
    body: JSON.stringify({ time_slot: { start_at: startDate, end_at: endDate } })
  }).catch(err => console.log(err))
}

const eventCoachClick = (id) => {
  fetchWithToken(`/time_slots/${id}`, {
    method: "GET",
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    }
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      // delete data.created_at
      // Object.keys(data).forEach( function(key) {
      //   document.getElementById(`time_slot_${data[key]}`).value = data[key]
      // })
      // data.forEach((attr, value) => console.log(attr, value))
      document.getElementById("time_slot_name").value = data.name;
      document.getElementById("time_slot_description").value = data.description;
      document.getElementById(`time_slot_level_${data.level.trim().toLowerCase().replace(' ', '_')}`).checked = true;
      if (data.group_size == 1) {
        document.getElementById("time_slot_group_size_individuel").checked = true;
      }
      else {
        document.getElementById("time_slot_group_size_collectif").checked = true;
      }
      document.getElementById("time_slot_group_size").value = data.group_size;

    })

  $("#exampleModal").modal('show')
}

export { initCoachCalendar }
