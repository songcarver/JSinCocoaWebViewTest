sandbox = true
appVersion = 'Tabby 0.12'

motivationalStringArray = [ "Hey, check out https://open.spotify.com/album/52PLNrXUMtPUZwcueV75J1" ]

	

`function isJson(item) {
    item = typeof item !== "string"
        ? JSON.stringify(item)
        : item;

    try {
        item = JSON.parse(item);
    } catch (e) {
        return false;
    }

    if (typeof item === "object" && item !== null) {
        return true;
    }

    return false;
}`


coverPageText = new TextLayer
# 	backgroundColor: '#ffff00'
	width: Screen.width
	height: 64
	text: appVersion
	fontWeight: 400
	fontSize: 12
	letterSpacing: 1.2
	padding: 12
	textAlign: 'center'
	x: Align.center()
	y: Align.top()
	
	color: '#ffffff'

coverPageText.states.done =
	opacity: 0
	animationOptions:
		time: 6
		curve: 'ease-in'

coverPageText.animate('done')


#global tracking of the firebase connection. Nicely, it re-connects automatically and seems to know instantly when connection goes out. 
 
firebaseStatus = ""


Framer.Extras.Hints.disable()
hasHeardFromServer = false


#toDo - Make a mode here which fakes CocoaBridge

cocoaBridgeIsUp = false
if sandbox then username = "Keith JS"
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


demoDB.onChange "connection", (status) ->
	firebaseStatus = status
	# status is either `connected´ or `disconnected´
	if firebaseStatus is 'disconnected'
		clearScrollView()
		scrollEmptyStateLabel.animate("disconnected")
		
	else 
		updateUserList()
		scrollEmptyStateLabel.animate("connected")


#################
# Initialize

#set the states to down. Prettier way is possble to do this using States, todo
Screen.backgroundColor = '#606A77'


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


updateTabbyView()


# here we set up the scroll view, without any content. That comes in later when database is connected 
scroll = new ScrollComponent
	parent: myView
	size: Screen.size
	scrollHorizontal: false
	height: cellSize
	width: Screen.width
	y: Align.bottom
	backgroundColor: "#000000"
scroll.scrollHorizontal = true
scroll.scrollVertical = false

scroll.mouseWheelEnabled = true

#empty state
scrollEmptyStateLabel = new TextLayer
	parent: scroll
	fontSize: 11
	textAlign: "center"
	fontWeight: 800
	color: "#ffffff"
	text: 'Checking alleyways…'
	padding: 4
	x: Align.center()
	y: Align.center()
	animationOptions: 
		time: 1

scrollEmptyStateLabel.states.alone =
	text: 'No other cool cats'
	opacity: 1
	textAlign: "center"

	animationOptions:
		time: 1
	
scrollEmptyStateLabel.states.disconnected =
	text: 'Offline mode'
	opacity: 1
	textAlign: "center"

	animationOptions:
		time: 1

scrollEmptyStateLabel.states.connected =
	text: ''
	opacity: 0
	textAlign: "center"

	animationOptions:
		time: 1
	
	
scrollEmptyStateLabel.sendToBack()

#hWin button
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
	#todo make a state for the entire banner, or different banners. this is a hack...
	

	
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
	if firebaseStatus is 'connected'
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
	if firebaseStatus is 'connected'
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


writeLastUpdatedEvent = (thisTime) ->
	if firebaseStatus is 'connected'
		if not thisTime? then timeNow = Date.now()
		else timeNow = thisTime
		dbString = "/" + timeNow
		demoDB.put('/lastUpdate', timeNow)
###############


demoDB.onChange "/lastUpdate", (value) -> 
	if firebaseStatus isnt 'connected' then return
	if !hasHeardFromServer 
		hasHeardFromServer = true
		serverReady()
		
		
	if ( Date.now() - value) < 5000 
		#Don't do anything on launch, because the onChange gets called on launch. 
		
		if firebaseStatus is 'connected'
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


clearScrollView = () ->
	for keys, things of scroll.content.children
		things.destroy()
 
updateUserList = () ->
	# here we update all the 
	if firebaseStatus isnt 'connected' then return
	userListKey = "/users/"
	demoDB.get userListKey, (theUsers) ->
		if not isJson(theUsers)
			print 'I caught a bad JSON!'
			return
			
# 		userListArray = JSON.parse(theUsers) # converts JSON to array	
		if scroll.content.children.length > 0
			clearScrollView()
			
		
		numUsers =  Object.keys(theUsers).length
		
		userArray = []
		
		for theUsername, theUserdata of theUsers
			if isFresh(theUserdata.lastUpdated)
				userArray.push(theUsername)
		

#				commented logic out below to show current username as well. 
# 				if theUsername isnt username 
# 					userArray.push(theUsername)
		
		#swap so the app user is always first listing always.
		
		didASwap = false
		for allTheUsers, index in userArray
			if allTheUsers is username
				[userArray[index], userArray[0]] = [userArray[0], userArray[index]]
				didASwap = true
		if not didASwap 
		#this means we never found our own name, 
		# which is probably because the database wasn't updated when we first called its user list
			userArray.unshift(username)
			
		# Variables
		
		
		
		columns = userArray.length
		gutter = 0
		
		
		if userArray.length is 0 
			scrollEmptyStateLabel.animate("alone")
		else 
			scrollEmptyStateLabel.animate("connected")
		
		
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
			if userArray[index] is username
				cellLabel.color = '#FFFF00'


#### Loops

motivationOverlay = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: '#ffff00'
	opacity: 0
	y: (-1 * Screen.height)

motivationOverlayText = new TextLayer
	text: 'You. Are. Rocking. It.'
	parent: motivationOverlay
	padding: 40
	fontSize: 40
	fontWeight: 800
	y: Align.center()
	
	
motivationOverlay.states.appear = 
	midX: Screen.midX
	midY: Screen.midY
	opacity: 1
	rotation: 0
	animationOptions:
		curve: Spring(tension: 100, friction: 25)

# motivationOverlay.animate('appear')


		

		

# update the user with the last known time

if sandbox
	Utils.interval 5, ->
		if firebaseStatus is 'connected'
			writeUserStatusEvent(username)
			writeLastUpdatedEvent()
			updateUserList()
else 
	Utils.interval 15, ->
		if firebaseStatus is 'connected'
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


