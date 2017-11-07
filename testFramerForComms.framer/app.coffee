document.body.style.cursor = "auto"

@photoAngle = 0

cloud_png.midX = Screen.midX
cloud_png.midY = Screen.midY

# create new slider 
angleSlider = new SliderComponent
	y: 90
	width: 200
	min: 0
	max: 360
	x:Align.center
	
	
	
angleSlider.knob.backgroundColor = '#555555'
angleSlider.knob.draggable.momentum = false



photoLabel  = new TextLayer
	fontSize: 22
	parent: cloud_png
	text: 'Cloud'
	padding: 12

# listen for knob motion
angleSlider.knob.onMove (event, layer) ->
	@photoAngle = angleSlider.value
	print 'edited by keith'
	updateCloudPhotoRotation(angleSlider.value)

# Button.onClick (event, layer) ->
# 	flipCloudPhoto()



@updateCloudPhotoRotation = (angle) ->
	cloud_png.rotation = angle
	print 'updateCloudPhotoRotation called with '+ angle
	CocoaBridge.photoRotated_(angle)

@flipCloudPhoto = () ->
	print 'flipCloudPhoto called.'
	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
	photoLabel.text = text
	print 'updatePhotoText called with ' + text
	
