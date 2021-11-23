import Sortable from 'sortablejs';
const initSportClassesOnCalendar = () => {
  const sport_classes = document.querySelector('.thumbnail_dragdrop');
  const test = document.getElementById('test');

  if (sport_classes && test) {
    new Sortable(sport_classes, {
      group: {
        name: 'shared',
        pull: 'clone'
      },
      animation: 150
    });

    new Sortable(test, {
      group: {
        name: 'shared',
        pull: 'clone'
      },
      animation: 150
    });

    setTimeout(() => {
    }, 3000);
  }
}

export default initSportClassesOnCalendar;
