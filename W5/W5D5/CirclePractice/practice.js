// document.addEventListener("DOMContentLoaded", function(){
//   const canvasEl = document.getElementById("myCanvas");
//   canvasEl.width = 900;
//   canvasEl.height = 900;
//
//   const ctx = canvasEl.getContext("2d");
//   ctx.fillStyle = "purple";
//   ctx.fillRect(0, 0, 900, 900);
//
//   ctx.beginPath();
//   ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
//   ctx.strokeStyle = "purple";
//   ctx.lineWidth = 5;
//   ctx.stroke();
//   ctx.fillStyle = "black";
//   ctx.fill();
//
//   ctx.rotate(((2 * Math.PI) / 60) * time.getSeconds() + ((2 * Math.PI) / 60000) * time.getMilliseconds());
//   ctx.translate(105, 0);
//   ctx.fill();
//
// });

var circle = new Image();
function init() {
  circle.src = 'http://www.clipartbest.com/cliparts/di8/6EB/di86EB7ie.png';
  window.requestAnimationFrame(draw);
}


function draw(){
  var ctx = document.getElementById('canvas').getContext('2d');
  ctx.globalCompositeOperation = 'destination-over';

  ctx.clearRect(0,0,900,900);
  // Earth
  var time = new Date();
  ctx.rotate(((2 * Math.PI) / 20) * time.getMinutes());
  ctx.translate(105, 0);
  // ctx.fillRect(0, -12, 50, 24); // Shadow
  ctx.drawImage(circle, -5, -5);

  ctx.restore();

  ctx.beginPath();
  ctx.arc(80, 8«0, 20, 0, 2*Math.PI, true);
  // ctx.strokeStyle = "purple";
  // ctx.lineWidth = 5;
  ctx.stroke();
  // ctx.fillStyle = "white";
  // ctx.fill();``

  ctx.drawImage(circle, 0, 0, 900, 900);
  window.requestAnimationFrame(draw);
};

init();




// var earth = new Image();
//
// function init(){
//   earth.src = 'http://4.bp.blogspot.com/-8pNWCR1SJhY/T83V8A2HzXI/AAAAAAAADuM/aRub2XdIBEo/s1600/Planet+Earth+8.jpg';
//   window.requestAnimationFrame(draw);
// }
//
//
// function(draw){
//   const canvas = document.getElementById("myCanvas").getContext('2d');
//
//   ctx.globalCompositeOperation = 'destination-over';
//   ctx.clearRect(0, 0, 300, 300); // clear canvas
//
//   ctx.fillStyle = 'black';
//   ctx.strokeStyle = "green";
//   ctx.save();
//   ctx.translate(150,150);
//
//
//   var time = new Date();
//   ctx.rotate(((2 * Math.PI) / 60) * time.getSeconds() + ((2 * Math.PI) / 60000) * time.getMilliseconds());
//   ctx.translate(105, 0);
//   ctx.fillRect(0, -12, 50, 24); // Shadow
//   ctx.drawImage(earth, -12, -12);
//
//   ctx.restore();
//
//   ctx.beginPath();
//
// }
//
//
//
// document.addEventListener("DOMContentLoaded", function(){
//
//   const canvas = document.getElementById("myCanvas");
//   canvas.width = 400;
//   canvas.height = 400;
//   //
//   // ctx.globalCompositeOperation = 'destination-over';
//   // ctx.clearRect(0, 0, 300, 300); // clear canvas
//
//   const ctx = canvas.getContext("2d");
//   ctx.arc(75, 75, 50, 0, Math.PI * 2, true);
//   ctx.fillStyle = 'black';
//   ctx.strokeStyle = "green";
//   // ctx.save();
//   // ctx.translate(150,150);
//
//   // var time = new Date();
//   ctx.rotate(((2 * Math.PI) / 60) * time.getSeconds() + ((2 * Math.PI) / 60000) * time.getMilliseconds());
//   ctx.translate(105, 0);
//   ctx.fillRect(0, -12, 50, 24); // Shadow
//   // ctx.drawImage(earth, -12, -12);
//
//
//
//   ctx.fillRect(0,0,400,400);
//
//   ctx.beginPath();
//   //
//   ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
//   ctx.lineWidth = 5;
//   ctx.stroke();
//   ctx.fillStyle = "blue";
//   ctx.fill();
// });
