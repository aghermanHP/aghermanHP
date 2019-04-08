

var taieImage = new Image();
taieimage.src = "../JavaAnmation/assets/taie.png";
function sprite (options) {
				
    var that = {};
					
    that.context = options.context;
    that.width = options.width;
    that.height = options.height;
    that.image = options.image;

    return that;

    var canvas = document.getElementById("taieAnimation");
canvas.width = 128;
canvas.height = 128;

var taie = sprite({
    context: canvas.getContext("2d"),
    width: 128,
    height: 128,
    image: taieImage
});

    that.render = function () {

        // Draw the animation
        that.context.drawImage(
           that.image,
           0,
           0,
           that.width,
           that.height,
           0,
           0,
           that.width,
           that.height);
    };
    that.update = function () {

        tickCount += 1;
			
        if (tickCount > ticksPerFrame) {
        
        	tickCount = 0;
        	
            // Go to the next frame
            frameIndex += 1; 
        }
    }; 
}

coin.render();