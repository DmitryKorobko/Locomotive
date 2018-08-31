$(document).ready(function() {
    $('.search-ticket-form').submit(function () {
       let start_station = $(this).find('#start_station'),
           end_station = $(this).find('#end_station');

       console.log(start_station.val() + ' ' + end_station.val());

       if (start_station.val() === end_station.val()) {
           alert('Please, select finish station!');

           return false;
       }
    });
});