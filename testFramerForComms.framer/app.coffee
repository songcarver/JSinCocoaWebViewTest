sandbox = true




#toDo - Make a mode here which fakes CocoaBridge

cocoaBridgeIsUp = false
username = "Test2"


document.body.style.cursor = "auto"
# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'





if sandbox
	#SANDBOX
	demoDB = new Firebase
		projectID: "tabbysandbox" # ... Database → first part of URL
		secret: "TBkoOoRnmPev8TfFtcTJViG3Wb0gFP1IGVXoJ8kT" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)

else
# 	PRODUCTION ONE:
# 	The required information is located at https://firebase.google.com → Console → YourProject → ...
	demoDB = new Firebase
		projectID: "tabbytest-8e201" # ... Database → first part of URL
		secret: "oParj369e6kYid1tungWZPDTMnYgrwOaC0hmBCnG" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)





myBackGround = new BackgroundLayer
	backgroundColor: '#333333'

########## set up scrolling view

# Variables
coloumns = 4
gutter = 0
coloumnWidth = 64

scroll = new ScrollComponent
	parent: myView
	width: Screen.width
	height: 64
	scrollVertical: false
	y: Align.bottom


scroll.mouseWheelEnabled = true



# Loop to create row layers
for index in [0...coloumns]

	cell = new Layer
		width:  coloumnWidth
		height: coloumnWidth
		x: index * (coloumnWidth + gutter)
		parent: scroll.content
		backgroundColor: "#00AAFF"
		hueRotate: index * 10




#################

#set the states to down. Prettier way is possble to do this using States, todo

winButtonDown.opacity = 0
hammerButtonDown.opacity = 0



#here's where the Win button should be
winButton.onClick (event, layer) ->
	writeNewEvent(username, 'win')
	
winButton.onMouseDown ->
	winButtonDown.opacity = 1

winButton.onMouseOut ->
	animationFadeOut = new Animation winButtonDown,
		opacity: 0
	animationFadeOut.start()
	
#hammerButton
hammerButton.onClick (event, layer) ->
	writeNewEvent(username, 'hammer')
	
hammerButton.onMouseDown ->
	hammerButtonDown.opacity = 1

hammerButton.onMouseOut ->
	animationFadeOut = new Animation hammerButtonDown,
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

showNotificationBanner = (eventString, eventKey) ->
	winnerName.text = eventString
	hammerInvert.visible = false
	winInvert.visible = false
	if eventKey is 'win' then winInvert.visible = true
	if eventKey is 'hammer' then hammerInvert.visible = true
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



writeUserStatusEvent = (username) ->
	# this writes a key value into /users for the current username and the lastUpdate
	timeNow =  Date.now()
	
	Event = 
		username
	lastUpdatedString = "/" + timeNow
	userPath = "/users/"+ username
	lastUpdatedKey = userPath + '/lastUpdated'
	demoDB.put(lastUpdatedKey, timeNow)
	
	

writeNewEvent = (username, userEventKey) ->
	# write a new entry
	myArray = username.split " "
	firstNameWinner = myArray[0]
	timeNow =  Date.now()
	if userEventKey = 'win' then eventString =  firstNameWinner + ' had a win!' 
	if userEventKey = 'hammer' then eventString =  firstNameWinner + ' is hammering!'
	Event = 
		username: username
		eventKey: userEventKey
		unixTime: timeNow
		eventString: eventString
	
	dbString = "/" + timeNow
	demoDB.put(dbString,Event)
	demoDB.put('/lastUpdate', timeNow)


writeLastUpdatedEvent = (timeNow) ->
	if !timeNow then timeNow = Date.now()
	dbString = "/" + timeNow
	demoDB.put(dbString,Event)
	demoDB.put('/lastUpdate', timeNow)
###############


demoDB.onChange "/lastUpdate", (value) -> 
	if ( Date.now() - value) < 5000 #Don't do anything on launch, because the onChange gets called on launch. 
		lastUpdateString = '/' + value
		demoDB.get lastUpdateString, (theEvent) ->
			if theEvent
				myArray = theEvent.username.split " "
				eventNotification =  theEvent.eventString
				if !sandbox then CocoaBridge.showMacNotification_(eventNotification) #send it to the mac
				showNotificationBanner(eventNotification, theEvent.eventKey)
			




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
	
	
updateUserList = () ->
	# here we update all the 
	userListKey = "/users/"
	demoDB.get userListKey, (theUsers) ->
# 		userListArray = JSON.parse(theUsers) # converts JSON to array	
		numUsers =  Object.keys(theUsers).length





#### Loops

#update the user with the last known time
# Utils.interval 30, ->
# 	writeUserStatusEvent(username)
# 	writeLastUpdatedEvent()


updateUserList()