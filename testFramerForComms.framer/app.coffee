sandbox = false


Framer.Extras.Hints.disable()
hasHeardFromServer = false


#toDo - Make a mode here which fakes CocoaBridge

cocoaBridgeIsUp = false
if sandbox then username = "Keith Lang"
else username = "Mr Default"



document.body.style.cursor = "auto"
# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'

# UI variables 
cellSize = 64


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
	backgroundColor: '#606A77'






#################
# Initialize

#set the states to down. Prettier way is possble to do this using States, todo

winButtonDown.opacity = 0
hammerButtonDown.opacity = 0


updateTabbyView = () ->
	maxDimension = Math.min(myView.width, (myView.height - cellSize))
	tabbyView.y = 0
	tabbyView.height = maxDimension
	tabbyView.width = maxDimension
	tabbyView.midX = Screen.midX
	
tabbyView = new Layer
	parent: myView
	backgroundColor: '#333333'
	opacity: 0

tabbyPlaceHolder = new TextLayer
	parent: tabbyView
	text: 'Coming soon…'
	fontSize: 12
	x: Align.center
	
	
tabbyView.sendToBack()

myBackGround.sendToBack()

updateTabbyView()


# here we set up the scroll view, without any content. That comes in later when database is connected 
scroll = new ScrollComponent
	parent: myView
	size: Screen.size
	scrollHorizontal: false
	height: cellSize
	width: Screen.width
	y: Align.bottom
	backgroundColor: "#222222"
scroll.scrollHorizontal = true
scroll.scrollVertical = false

scroll.mouseWheelEnabled = true

#empty state
scrollEmptyStateLabel = new TextLayer
	name: 'ScrollEmptyStateLayer'
	parent: scroll
	fontSize: 11
	fontWeight: 800
	color: 'white'
	text: 'No other cool cats'
	padding: 4
	x: Align.center
	y: Align.center
	
scrollEmptyStateLabel.sendToBack()
	

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

showNotificationBanner = (eventNotification, eventKey) ->
	winnerName.text = eventNotification
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
	if userEventKey is 'win' then eventString =  firstNameWinner + ' had a win!' 
	if userEventKey is 'hammer' then eventString =  firstNameWinner + ' is hammering!'
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
	if !hasHeardFromServer 
		hasHeardFromServer = true
		serverReady()
		
		
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
	
	
	

# window resizes #########


window.onresize = () ->
	updateCanvasDimensions()

updateCanvasDimensions = () ->
	myView.width = Canvas.width
	myView.height = Canvas.height
	scroll.width = myView.width
	scroll.y = Align.bottom
	updateTabbyView()
	if scrollEmptyStateLabel?
		scrollEmptyStateLabel.midX = myView.midX
	

updateCanvasDimensions()

	




window.addEventListener "keydown", (keyboardEvent) ->
	switch keyboardEvent.keyCode
		when 40
			myView.backgroundColor = '#441111'
			username = "Ima Testing!"



 
updateUserList = () ->
	# here we update all the 
	userListKey = "/users/"
	demoDB.get userListKey, (theUsers) ->
# 		userListArray = JSON.parse(theUsers) # converts JSON to array	
		if scroll.content.children.length > 0
			for keys, things of scroll.content.children
				things.destroy()
			
		
		numUsers =  Object.keys(theUsers).length
		
		userArray = []
		
		for theUsername, theUserdata of theUsers
			if isFresh(theUserdata.lastUpdated)
				if theUsername isnt username
					userArray.push(theUsername)
		# Variables
		
		
		columns = userArray.length
		gutter = 0
		
		
		if userArray.length is 0 
			scrollEmptyStateLabel.visible = true
		else 
			scrollEmptyStateLabel.visible = false

		
		
		# Loop to create row layers
		for index in [0...columns]
		
			cell = new Layer
				width:  cellSize
				height: cellSize
				x: index * (cellSize + gutter)
				parent: scroll.content
				backgroundColor: "#00AAFF"
				hueRotate: index * 10
			
			
			# this makes name into initials
			tempUserName = userArray[index]
			myArray = tempUserName.split " "
			
			userInitials = myArray[0].charAt(0) 
			if myArray[1]
				userInitials += myArray[1].charAt(0)
			
			
			userInitials = userArray[index]
				
			cellLabel = new TextLayer
				parent: cell
				x: 0
				y: 0
				text: userInitials
				fontWeight: 800
				fontSize: 11
				color: 'white'
				padding: 4



#### Loops




# update the user with the last known time

if sandbox
	Utils.interval 5, ->
		writeUserStatusEvent(username)
		writeLastUpdatedEvent()
		updateUserList()
else 
	Utils.interval 10, ->
		writeUserStatusEvent(username)
		writeLastUpdatedEvent()
		updateUserList()



serverReady = () ->
# 	 'server ready'
	updateUserList()
	
isFresh = (someTime) ->
	# if the time handed over is more than 30s old
	if (Date.now() - someTime ) > 30000
		return false
	else 
		return true


