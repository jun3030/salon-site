window.onload = function() {
  var calendarEl = document.getElementById('#holiday_calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, timeGridPlugin, listPlugin, interactionPlugin ],
    locale: 'ja',
    headerToolbar: {
        right: 'dayGridMonth,timeGridWeek,dayGridDay',
        center: "title",
        left: "today prev,next"
    }, // buttons for switching between views
    buttonText: {
        month: '月',
        week: '週',
        day: '日',
        today: '今日',
        prev: '前',
        next: '次'
    },
    allDaySlot: false,
    events: [
      { // this object will be "parsed" into an Event Object
        title: 'The Title', // a property!
        start: '2018-09-01', // a property!
        end: '2018-09-02' // a property! ** see important note below about 'end' **
      }
    ],
    eventClick: function(info) {
      alert('Event: ' + info.event.title);
    }
  });
  calendar.render();
};
