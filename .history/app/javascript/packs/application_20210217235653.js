// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')
// require("sample.js")  // 個別に読み込みたいjsファイルを追加していく

import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';
import interactionPlugin from '@fullcalendar/interaction';

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ 'dayGridPlugin', 'timeGridPlugin', 'listPlugin', 'interactionPlugin' ],
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
    },
    defaultDate: '2019-08-12',
    navLinks: true, // can click day/week names to navigate views
    businessHours: true, // display business hours
    editable: true,
    events: [
      {
        title: 'Business Lunch',
        start: '2019-08-03T13:00:00',
        constraint: 'businessHours'
      },
      {
        title: 'Meeting',
        start: '2019-08-13T11:00:00',
        constraint: 'availableForMeeting', // defined below
        color: '#257e4a'
      },
      {
        title: 'Conference',
        start: '2019-08-18',
        end: '2019-08-20'
      },
      {
        title: 'Party',
        start: '2019-08-29T20:00:00'
      },

      // areas where "Meeting" must be dropped
      {
        groupId: 'availableForMeeting',
        start: '2019-08-11T10:00:00',
        end: '2019-08-11T16:00:00',
        rendering: 'background'
      },
      {
        groupId: 'availableForMeeting',
        start: '2019-08-13T10:00:00',
        end: '2019-08-13T16:00:00',
        rendering: 'background'
      },

      // red areas where no events can be dropped
      {
        start: '2019-08-24',
        end: '2019-08-28',
        overlap: false,
        rendering: 'background',
        color: '#ff9f89'
      },
      {
        start: '2019-08-06',
        end: '2019-08-08',
        overlap: false,
        rendering: 'background',
        color: '#ff9f89'
      }
    ]
  });

  calendar.render();
});



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
