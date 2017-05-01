
// <meta http-equiv="refresh" content="3" >

var img = new Image();
img.src = 'http://media-cache-ak0.pinimg.com/736x/38/58/bb/3858bb46f8ab7ae1111b6f5a5ed17b20.jpg';


img.onload = function(){
  ctx = document.getElementById('canvas').getContext('2d');
  return setInterval(draw, 70);
}


function draw() {
  var canvas = document.getElementById('canvas');
  if (canvas.getContext) {
    // var ctx = canvas.getContext('2d');

    // ctx.globalCompositeOperation = 'destination-over';
    ctx.clearRect(0,0,700,700);
    ctx.fillStyle = 'rgba(0, 0, 0, 0.4)';
    ctx.strokeStyle = 'rgba(0, 153, 255, 0.4)';
    ctx.save();
    // ctx.translate(150,150);
    ctx.beginPath();
    ctx.rotate(Math.PI / 6);
    ctx.moveTo(100,0);
    ctx.drawImage(img, 50, 50, 200, 200);
    ctx.restore();
    // ctx.arc(150, 150, 105, 0, Math.PI * 2, false); // Earth orbit
    // ctx.stroke();
    ctx.drawImage(img, 50, 50, 200, 200);
    window.requestAnimationFrame(draw);


    // squares
    //
    // ctx.fillStyle = 'rgb(200, 0, 0)';
    // ctx.fillRect(50, 50, 450, 100);
    // // ctx.clearRect(145, 150, 35, 45);
    // ctx.fillStyle = 'green';
    // ctx.fillRect(15,16,35,50);
    //
    // ctx.fillStyle = 'rgba(0, 0, 200, 0.5)';
    // ctx.fillRect(30, 30, 50, 50);
    //
    // //triangle
    //
    // ctx.fillStyle = 'black'
    // ctx.moveTo(85,50);
    // ctx.lineTo(100,75);
    // ctx.lineTo(100,25);
    // ctx.fill();

    //smiley face

    // ctx.beginPath();
    // ctx.arc(75, 75, 50, 0, Math.PI * 2, true); // Outer circle
    // ctx.moveTo(110, 75);
    // ctx.arc(75, 75, 35, 0, Math.PI, false);  // Mouth (clockwise)
    // ctx.moveTo(65, 65);
    // ctx.arc(60, 65, 5, 0, Math.PI * 2, true);  // Left eye
    // ctx.moveTo(95, 65);
    // ctx.arc(90, 65, 5, 0, Math.PI * 2, true);  // Right eye
    // ctx.stroke();
    //

    // heart
    // ctx.beginPath();
    // ctx.moveTo(75, 40);
    // ctx.bezierCurveTo(75, 37, 70, 25, 50, 25);
    // ctx.bezierCurveTo(20, 25, 20, 62.5, 20, 62.5);
    // ctx.bezierCurveTo(20, 80, 40, 102, 75, 120);
    // ctx.bezierCurveTo(110, 102, 130, 80, 130, 62.5);
    // ctx.bezierCurveTo(130, 62.5, 130, 25, 100, 25);
    // ctx.bezierCurveTo(85, 25, 75, 37, 75, 40);
    // ctx.fill();
  }
}
