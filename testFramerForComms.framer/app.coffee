cocoaBridgeIsUp = false
username = "Rupert"


document.body.style.cursor = "auto"
# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'


# The required information is located at https://firebase.google.com → Console → YourProject → ...

demoDB = new Firebase
	projectID: "tabbytest-8e201" # ... Database → first part of URL
	secret: "oParj369e6kYid1tungWZPDTMnYgrwOaC0hmBCnG" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)



myBackGround = new BackgroundLayer
	backgroundColor: '#333333'

winButtonDown.opacity = 0

#here's where the Win button should be
winButton.onClick (event, layer) ->
	writeNewEvent(username)

	
	
winButton.onMouseDown ->
	winButtonDown.opacity = 1

winButton.onMouseOut ->
	animationFadeOut = new Animation winButtonDown,
		opacity: 0

	animationFadeOut.start()
	
	
banner.maxY = 0
banner.states.showing =
	y: 0

banner.states.hidden =
	y: -40
	animationOptions:
		time: 0.2
	
	
# winnerName.textTransform = "uppercase"
winnerName.x = 40

showNotificationBanner = (text) ->
	myArray = text.split " "
	winnerName.text = myArray[0]+ ' had a win!'
	animationB.start()

	
# Animate the layer to the right 
animationB = new Animation banner,
	banner.states.showing
	curve: "Spring"


animationB.on Events.AnimationEnd, ->
	Utils.delay 3, ->
		banner.animate('hidden')
	
	
# animationB.on Events.AnimationEnd, notificationBanner.states.



	

timeAtLaunch = Date.now()




timeNow =  Date.now()



writeNewEvent = (username) ->
	# write a new entry
	timeNow =  Date.now()
	Event = 
		username: username
		eventKey: 'win'
		unixTime: timeNow
	
	dbString = "/" + timeNow
	demoDB.put(dbString,Event)
	demoDB.put('/lastUpdate', timeNow)

###############


demoDB.onChange "/lastUpdate", (value) -> 
	if ( Date.now() - value) < 5000 #Don't do anything on launch, because the onChange gets called on launch
		lastUpdateString = '/' + value
		demoDB.get lastUpdateString, (theEvent) ->
			firstNameWinner = myArray[0]+ ' had a win!'
			eventNotification =  firstNameWinner + ' had a ' + theEvent.eventKey + '!'
			CocoaBridge.showMacNotification_(eventNotification) #send it to the mac
			showNotificationBanner(eventNotification)
			





@photoAngle = 0
# 
# cloud_png.midX = Screen.midX
# cloud_png.midY = Screen.midY
# 
# # create new slider 
# angleSlider = new SliderComponent
# 	y: 90
# 	width: 200
# 	min: 0
# 	max: 360
# 	x:Align.center
	
	
	
# angleSlider.knob.backgroundColor = '#555555'
# angleSlider.knob.draggable.momentum = false



# photoLabel  = new TextLayer
# 	fontSize: 22
# 	parent: cloud_png
# 	text: 'Cloud'
# 	padding: 12

# listen for knob motion
# angleSlider.knob.onMove (event, layer) ->
# 	@photoAngle = angleSlider.value
# 	print 'edited by keith'
# 	updateCloudPhotoRotation(angleSlider.value)

# Button.onClick (event, layer) ->
# 	flipCloudPhoto()


@updateMouseX = (mouseX,mouseY) ->
	#print mouseX + ', ' + mouseY

@updateCloudPhotoRotation = (angle) ->
# 	cloud_png.rotation = angle
# 	print 'updateCloudPhotoRotation called with '+ angle
# 	CocoaBridge.photoRotated_(angle)

@flipCloudPhoto = () ->
# 	print 'flipCloudPhoto called.'
# 	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
# 	photoLabel.text = text
# 	print 'updatePhotoText called with ' + text
	
@updateUserName = (myName) ->
	username = myName
	cocoaBridgeIsUp = true
	
	
# showNotificationBanner('test launch')

