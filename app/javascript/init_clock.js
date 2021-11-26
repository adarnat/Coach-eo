const months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];

const updateClock = () => {
  const clockS = $(".seconds");
  const clockH = $(".hours");
  const clockM = $(".minutes");
  const d = new Date(),
    s = d.getSeconds() * 6,
    m = d.getMinutes() * 6 + (s / 60),
    h = d.getHours() % 12 / 12 * 360 + (m / 12);
  clockS.css("transform", "rotate(" + s + "deg)");
  clockH.css("transform", "rotate(" + h + "deg)");
  clockM.css("transform", "rotate(" + m + "deg)");
}



const initClock = () => {

  // const date = new Date()
  // const year = date.getFullYear()
  // const month = date.getMonth()
  // const day = date.getUTCDate()

  // document.getElementById('daymonth').innerHTML = months[month] + " " + day;
  // document.getElementById('year').innerHTML = year;


  const clock = setInterval(updateClock, 1000);
}


export { initClock }
