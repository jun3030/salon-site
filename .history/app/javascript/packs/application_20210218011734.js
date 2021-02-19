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


document.addEventListener('turbolinks:load', function() {
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
        prev: '前',
        next: '次'
    },
    views: {
    dayGridMonth: {
      buttonText: {prev: 'test'}
      // options apply to dayGridMonth, dayGridWeek, and dayGridDay views

    },
    timeGridWeek: {
      // options apply to timeGridWeek and timeGridDay views
    },
    timeGridDay: {
      // options apply to timeGridWeek and timeGridDay views
    },
    week: {
      // options apply to dayGridWeek and timeGridWeek views
    },
    day: {
      // options apply to dayGridDay and timeGridDay views
    }
  }

  });

  calendar.render();
});



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
