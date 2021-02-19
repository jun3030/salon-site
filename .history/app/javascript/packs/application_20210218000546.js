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
    //ヘッダーの設定
  header: {
    left: "today month,basicWeek",
    center: "title",
    right: "prev next"
  },
  editable: true, // イベントを編集するか
  allDaySlot: false, // 終日表示の枠を表示するか
  eventDurationEditable: false, // イベント期間をドラッグしで変更するかどうか
  slotEventOverlap: false, // イベントを重ねて表示するか
  selectable: true,
  selectHelper: true,
  select: function(start, end, allDay) {
    日の枠内を選択したときの処理;
  },
  eventClick: function(calEvent, jsEvent, view) {
    イベントをクリックしたときの処理;
  },
  droppable: true, // イベントをドラッグできるかどうか
  events: [
    {
      title: "イベント",
      start: "2017-02-14"
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
