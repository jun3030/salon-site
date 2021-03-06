// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')
require("sample.js")  // 個別に読み込みたいjsファイルを追加していく

window.onload = function() {
if (document.getElementById("calendar") != null) {
  var calendarEl = document.getElementById('calendar');

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
} else {
  var calendarEl = document.getElementById('holiday_calendar');

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
    },
    selectable: true,
    dayClick: function(date) {
      alert('clicked ' + date.format());
      get("iregular_holidays/new/?date=#{date.format()}");
    },
    eventClick: function(eventObj) {
      get("iregular_holidays/#{eventObj.id}/edit");
    },

    validRange: {
      start: json_data["start_date"],
      end: json_data["end_date"]
    },
    events: json_data["holidays"]

  });
  calendar.render();
}
}

import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';
import interactionPlugin from '@fullcalendar/interaction';





// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
