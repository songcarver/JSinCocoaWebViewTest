document.body.style.cursor = "auto"

#create new slider 
angleSlider = new SliderComponent
	y: 120
	width: 200
	min: 0
	max: 360
	x:Align.center
	
	
	
angleSlider.knob.backgroundColor = '#555555'
angleSlider.knob.draggable.momentum = false

# center align the button
Button.x.center

photoLabel  = new TextLayer
	fontSize: 22
	parent: cloud_png
	text: 'Cloud'
	padding: 12

# listen for knob motion
angleSlider.knob.onMove (event, layer) ->
	updateCloudPhotoRotation(angleSlider.value)

Button.onClick (event, layer) ->
	flipCloudPhoto()



@updateCloudPhotoRotation = (angle) ->
	cloud_png.rotation = angle
	print 'updateCloudPhotoRotation called with '+ angle 

@flipCloudPhoto = () ->
	print 'flipCloudPhoto called.'
	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
	photoLabel.text = text
	print 'updatePhotoText called with ' + text
	