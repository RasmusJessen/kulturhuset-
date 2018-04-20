let events = [];

fetch("http://localhost:3500/events")
.then((response) => {
 return response.json();
})
.then((data) => {
 for (let i = 0; i < data.length; i++) {
   events.push(data[i]);

   if (events[i].dato)
   events[i].start = new Date(events[i].dato.replace(/[Zz]/gi, ''));
 }
})
.then((data) => {
    console.log(events);
    document.querySelector('#calendar').FullCalendar({
        events: events
    });
});

