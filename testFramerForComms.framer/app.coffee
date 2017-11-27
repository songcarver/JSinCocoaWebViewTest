sandbox = false
appVersion = 0.15
appVersionString = ''
username = ''

thisUser =
	isInOffice : false
	
	

motivationalStringArray = [ "Hey, check out https://open.spotify.com/album/52PLNrXUMtPUZwcueV75J1" ]

userLabelArray = []

oldUserString = ""

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

@updateMouseX = (mouseX,mouseY) ->
	
	
@updateCloudPhotoRotation = (angle) ->
#	cloud_png.rotation = angle
#	CocoaBridge.photoRotated_(angle)

@flipCloudPhoto = () ->
#	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
#	photoLabel.text = text

@updateUserName = (myName) ->
	username = myName
	cocoaBridgeIsUp = true
# 	print 'cocoabridge is up'
	
	
	

coverPageText = new TextLayer
# 	backgroundColor: '#ffff00'
	width: Screen.width
	height: 64
	text: appVersionString
	fontWeight: 400
	fontSize: 12
	letterSpacing: 1.2
	padding: 12
	textAlign: 'center'
	x: Align.center()
	y: Align.center()
	
	color: '#ffffff'

coverPageText.states.done =
	opacity: 0
	animationOptions:
		time: 3
		curve: 'ease-in'

coverPageText.animate('done')





#global tracking of the firebase connection. Nicely, it re-connects automatically and seems to know instantly when connection goes out. 
 
firebaseStatus = ""

# Framer-specific overrides 
Framer.Extras.Hints.disable()
document.body.style.cursor = "auto"



hasHeardFromServer = false


#toDo - Make a mode here which fakes CocoaBridge

cocoaBridgeIsUp = false
if sandbox then username = "Keith JS"
if username  is ""  then username = "Keith Testing"



# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'

# UI variables 
cellSize = 72


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
	if status? then firebaseStatus = status
	# status is either `connected´ or `disconnected´
	if firebaseStatus is 'disconnected'
		clearScrollView()
		scrollEmptyStateLabel.animate("disconnected")
		oldUserString = "" #reload user list after outage
	else 
		scrollEmptyStateLabel.animate("connected")



#################
# Initialize


# set up all the buttons
myButtonArray = []

allButtons = new Layer
	parent: myView
	width: Screen.width
	height: 40
	backgroundColor: 'transparent'



showMotivationOverlay = (key) ->
	
	maxScreenDimension = 1.5 * Math.max(Screen.width, Screen.height)
	segments1.width = maxScreenDimension
	segments1.height = maxScreenDimension
	
	segments1.midX = Screen.midX
	segments1.midY = Screen.midY
	
	
	segments2.width = maxScreenDimension
	segments2.height = maxScreenDimension
	
	segments2.midX = Screen.midX
	segments2.midY = Screen.midY
	
	segments3.width = maxScreenDimension
	segments3.height = maxScreenDimension
	
	segments3.midX = Screen.midX
	segments3.midY = Screen.midY
		
	keyDropAnimation.restart()	
	motivationOverlay.width = Screen.width
	motivationOverlay.height = Screen.height
	motivationOverlay.x = 0
	motivationOverlay.y = 0
	
	motivationOverlay.midX = Screen.midX
	
	
	rotate1.restart()
	rotate2.restart()
	rotate3.restart()
	keyDropAnimation.restart()
	
	if !key? then key = '🏆'
	motivationOverlayText.text = key
	
	motivationOverlayText.midX= Screen.midX
	showMotivationAnimation = new Animation motivationOverlay,
		opacity: 1
		midX: Screen.midX
		
		
	showMotivationAnimation.on Events.AnimationEnd, ->
		Utils.delay 3, ->
			hideMotivationAnimation = new Animation motivationOverlay,
				opacity: 0
				midX: Screen.midX
			hideMotivationAnimation.start()
	
	showMotivationAnimation.start()


	
buttonTips = new TextLayer
	text: 'Having a win'
	fontSize: 11
	fontWeight: 800
	color: '#eeee00'
# 	backgroundColor: '111100'
	padding: 4
# 	width: Screen.width
	textAlign: 'center'
	opacity: 0
	y: Align.top(84)
	x: Align.center(-32)



buttonTips.states.in = 
	opacity: 1
	animationOptions: 
		time: 1

	

	
buttonTips.states.out = 
	opacity: 0
	animationOptions: 
		time: 0


lastTriggered = 0


# little function that requires certain number of triggers in a set time else it times out
triggered = () ->
	if (Date.now() - lastTriggered) > 2000
		buttonTips.animate('out')
	else 
		Utils.delay 2.1, ->
			triggered()
		

allButtons.onMouseOver (event, layer) ->
	Utils.delay 1, ->
		buttonTips.animate('in')
	lastTriggered = Date.now()
	triggered()

	
			
	
createButtonLayer = (name, x, y) ->
	@myLayer = new TextLayer
		parent: allButtons
		name: name
		text: name
		fontSize: 16
		padding: 8
		backgroundColor: '#444B54'
		borderRadius: 2
		

	@myLayer.states.down = 
		backgroundColor: '#B6C9E0'
		
	@myLayer.states.over = 
		backgroundColor: '#91A0B3'
	
	@myLayer.states.default = 
		x: x
		backgroundColor: '#444B54'
		
		
	
	@myLayer.onMouseDown (event, layer) ->
		layer.stateSwitch('down')
	
	@myLayer.onMouseOver (event, layer) ->
		layer.stateSwitch('over')
		buttonTips.text = myButtonHelperText[name]
		
		
		
		
	@myLayer.onMouseOut (event, layer) ->
		layer.stateSwitch('default')

		
	@myLayer.onMouseUp (event, layer) ->
		layer.stateSwitch('default')
		
	@myLayer.onClick (event, layer) ->
		writeNewEvent(username, name)
		showMotivationOverlay(name)
		
	myButtonArray.push(@myLayer)
	

myButtons = ['👋','🔨','👍','🤔','🏆','☕️','🥗','🚪']

myButtonHelperText = 
	'👋': 'Hi!'
	'🤔': 'Need some feedback/help'
	'🔨': 'Hammering on something'
	'👍': 'Purrrfect'
	'🏆': 'Winning!'
	'☕️': 'C.o.f.f.e.e.time'
	'🥗': 'Lunch!'
	'🚪': 'Smell you later.'
	
	
	
	
#todo add a Zz 😴

for buttons in myButtons
	createButtonLayer(buttons)


updateButtonLayout = (myButtonArray, myButtons) ->
	for index, eachButton of myButtonArray
		columns = 4
		contentWidth = eachButton.width * columns
		padding = 2
		combinedWidth = (padding * (columns - 1)) + (contentWidth  )
		originLeft = Math.floor((Screen.width - combinedWidth) / 2)
		x = originLeft +  (index * (eachButton.width + padding))
		eachButton.x = x
		eachButton.y = 8
		if index > 3
			eachButton.y = padding + 8 + eachButton.height
			eachButton.x -= (combinedWidth + padding) 
	

updateButtonLayout(myButtonArray, myButtons)




#set the states to down. Prettier way is possble to do this using States, todo
Screen.backgroundColor = '#606A77'




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


updateTabbyView?()


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
funCheckingText = Utils.randomChoice(['checking alleyways…', 'meowing for others…', 'sniffing internets…', 'coolpeeps radar on…', 'anyone cool as you?…', 'helloooo world…'])
scrollEmptyStateLabel = new TextLayer
	parent: scroll
	fontSize: 11
	textAlign: "center"
	textTransform: 'uppercase'
	fontWeight: 600
	color: "#ffffff"
	text: funCheckingText
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

banner = new Layer
	backgroundColor: '#ffff00'
	height: 40
	width: Screen.width
	
winnerName = new TextLayer
	width: banner.width
	padding: 8
	parent: banner
	x: 8
	fontSize: 20
	color: '#111111'
	y: Align.center
	
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
# 		if userEventKey is 'win' then eventString =  firstNameWinner + ' had a win!' 
		eventString =  firstNameWinner + ' is ' + userEventKey
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


####### isInTheOffice stuff

checkUserIPAddress = () ->

	`function httpGetAsync(theUrl, callback)
	{
	    var xmlHttp = new XMLHttpRequest();
	    xmlHttp.onreadystatechange = function() { 
	        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
	            callback(xmlHttp.responseText);
	    }
	    xmlHttp.open("GET", theUrl, true); // true for asynchronous 
	    xmlHttp.send(null);
	}`
	
	myFunction = (response) ->
		if JSON.parse(response)['ip'] is "61.68.35.10"
			thisUser.isInOffice = true
		else thisUser.isInOffice = false
		
	httpGetAsync('//ipinfo.io/json', myFunction)










############ Badge stuff
updateUsersBadge = (theEvent) ->
	#update the users's badge
	if theEvent.eventKey isnt '' #if the event isnt blank
		for theLayer in scroll.content.children
			if theLayer.name is theEvent.username
				theLayer.children[1].text = theEvent.eventKey
				theLayer.children[1].opacity = 1
				fadeOutStateAnimation = new Animation theLayer.children[1],
					opacity: 0
					options:
						time: 1
				
				Utils.delay 210, -> 
					fadeOutStateAnimation.start()
					#keep it on the screen for 3.5 minutes before fadeing out

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
				if theEvent?
					myArray = theEvent.username.split " "
					eventNotification =  theEvent.eventString
					
					
					#now we show the local notifications as well as the Mac one
					if theEvent.username isnt username #don't show the notification if it's me
						showNotificationBanner(eventNotification, theEvent.eventKey)

					if theEvent.username isnt username #don't show the notification if it's me
						if !sandbox
							CocoaBridge.showMacNotification_(eventNotification) #send it to the mac

					updateUsersBadge(theEvent)

									 






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
# 	
# 	
# 	
# angleSlider.knob.backgroundColor = '#555555'
# angleSlider.knob.draggable.momentum = false
# 
# 
# 
# photoLabel  = new TextLayer
# 	fontSize: 22
# 	parent: cloud_png
# 	text: 'Cloud'
# 	padding: 12
# 
# # listen for knob motion
# angleSlider.knob.onMove (event, layer) ->
# 	@photoAngle = angleSlider.value
# 	updateCloudPhotoRotation(angleSlider.value)
# 
# Button.onClick (event, layer) ->
# 	flipCloudPhoto()





# window resizes #########


window.onresize = () ->
	updateCanvasDimensions?()

updateCanvasDimensions = () ->
	myView.width = Canvas.width
	myView.height = Canvas.height
	scroll.width = myView.width
	scroll.y = Align.bottom
	updateTabbyView?()
	if scrollEmptyStateLabel?
		scrollEmptyStateLabel.midX = myView.midX
		
	updateButtonLayout(myButtonArray, myButtons)
	#update where the buttons are placed
	
	
updateCanvasDimensions?()

	




window.addEventListener "keydown", (keyboardEvent) ->
	switch keyboardEvent.keyCode
		when 40
			myView.backgroundColor = '#441111'
			username = "Ima Testing!"


clearScrollView = () ->
	for keys, things of scroll.content.children
		things.destroy()
 
makeStringFromObject = (theObject) ->
	theString = ""
	for theUsername, theUserdata of theObject
# 		print theUserdata
		if isFresh(theUserdata.lastUpdated)
			theString += theUsername
	return theString




updateUserList = () ->
	
	# here we update all the 
	if firebaseStatus isnt 'connected' then return
	userListKey = "/users/"
	demoDB.get userListKey, (theUsers) ->
# 		print theUsers

		
		if oldUserString is makeStringFromObject(theUsers)
			return
		
		oldUserString = makeStringFromObject(theUsers)
		
		if not isJson(theUsers)
			return
		
		#todo make a list  as a simple string of all current users, compare, don't needlessly redrew
# 		userListAsStringCheck = ""
# 		for allNames in theUsers
# 			print allNames[0]
# 			userListAsStringCheck += allNames.keys[0]
# 		
# 		print userListAsStringCheck
		
		
# 		userListArray = JSON.parse(theUsers) # converts JSON to array	
		if scroll.content.children.length > 0
			clearScrollView?()
			
		
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
				backgroundColor: "#4C545E"
				hueRotate: index * 10
			
			
			# this makes name into initials
			tempUserName = userArray[index]
			myArray = tempUserName.split " "
			
			userInitials = myArray[0].charAt(0) 
			if myArray[1]
				userInitials += myArray[1].charAt(0)
			
			
			
			userInitials = userArray[index]
			cell.name = userInitials
			cellLabel = new TextLayer
				parent: cell
				name: userInitials + ' label'
				x: 0
				y: 0
				text: userInitials
				fontWeight: 600
				fontSize: 11
				color: 'white'
				padding: 4
			

			
			if userArray[index] is username
				cellLabel.color = '#ffffff'
				
			cellBadge  = new TextLayer
				parent: cell
				text: ''
				fontSize: 12
				y: Align.bottom(-8)
				x:8 
				opacity: 1
				
			
				

showUpdateAvailableBanner = () ->
	buildOverlay = new Layer
		height: Screen.height
		width: Screen.width

	
	textOverlay = new Layer
		parent: buildOverlay
		backgroundColor: '#000000'
		opacity: 0.8
		width: buildOverlay.width
		height: buildOverlay.height
		
	text = new TextLayer
		parent: buildOverlay
		fontSize: 13
		fontWeight: 600
		color: 'white'
		text: "✨Meow! I smell a fresher version… click here now!"
		padding: 20
		textAlign: 'center'
		x: Align.center
		y: Align.center


	buildOverlay.onClick (event, layer) ->
		`window.open("https://www.evernote.com/l/AAF3kITp759C2p4zTphJt6qGpjCrS5r3msQ");`
		buildOverlay.visible = false
	
	

#### Loops



motivationOverlay = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: '#EBDA01'
	opacity: 0


	
	
motivationOverlay.states.appear = 
	midX: Screen.midX
	midY: Screen.midY
	opacity: 0
	rotation: 0
	animationOptions:
		curve: Spring(tension: 100, friction: 25)

#motivationOverlay.animate('appear')

segments1 = new Layer
	parent: motivationOverlay
	image: "images/sunburst-yellow.svg"
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	

rotate1 = new Animation segments1,
	rotation: 86
	options:
		time: 6
		curve: 'linear'

rotate1.start()

segments2 = new Layer
	parent: motivationOverlay
	image: "images/sunburst-yellow.svg"
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	rotation: 90
	
	
rotate2 = new Animation segments2,
	rotation: 120
	options:
		time: 4
		curve: 'linear'
rotate2.start()


segments3 = new Layer
	parent: motivationOverlay
	image: "images/sunburst-yellow.svg"
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	rotation: -90
	
	
rotate3 = new Animation segments3,
	rotation: -70
	options:
		time: 5
		curve: 'linear'
rotate3.start()


motivationOverlayText = new TextLayer
	text: '🏆'
	parent: motivationOverlay
	padding: 40
	textAlign: 'center'
	fontSize: 100
	fontWeight: 800
	y: - 200
	x: Align.center()
	
keyDropAnimation = new Animation motivationOverlayText,
	y: Align.center()
	
	options:
		curve: Spring







checkAppVersion = () ->
	#here's where we check the database for updates
	if firebaseStatus is 'connected'
		demoDB.get "/latestAppVersion", (theEvent) ->
			if theEvent?
				if theEvent > appVersion
					showUpdateAvailableBanner?()
				
				
	# 		if then



# update the user with the last known time

if sandbox
	Utils.interval 5, ->
		if firebaseStatus is 'connected'
			writeUserStatusEvent(username)
			writeLastUpdatedEvent?()
else 
	Utils.interval 15, ->
		if firebaseStatus is 'connected'
			writeUserStatusEvent(username)
			writeLastUpdatedEvent?()



serverReady = () ->
#	updateUserList()
# 	print 'Server is ready'
	checkAppVersion?()
	
isFresh = (someTime) ->
	# if the time handed over is more than 30s old
	if (Date.now() - someTime ) > 30000
		return false
	else 
		return true

Utils.interval 86400, ->
	serverReady?()
	
demoDB.onChange "/users", (status) ->
	updateUserList?()
	
	
	
	
	
	
# local storage test 	
# getStorage = (key) ->
# 	if (!localStorage.getItem(key)) 
# 		print 'not there'
# 	else return localStorage.getItem(key)
# 
# 
# setStorage = (key, value) ->
# 	localStorage.setItem(key, value)
# 
# 
# 
# testArray = ['thingo', 'other thingo']
# 
# testObject = 
# 	myThing : 1
# 	myBetterThing: 42
# 	
# theKey = 'tabbyThing'
# 
# # setStorage(theKey, JSON.stringify(testObject))
# theObject = JSON.parse(getStorage('tabbyThing'))
# print theObject.myBetterThing
