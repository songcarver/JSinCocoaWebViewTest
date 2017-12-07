

sandbox = false
shouldStop = true

lastUserWorkInertiaLevel = {}


haveConfetti = true

appVersion = 0.17
appVersionString = ''
username = ''
cocoaBridgeIsUp = false
workInertiaActive = true
testingWorkInertia = false

workInertia = 0
lastWorkInertiaTimeCheck = 0


teamListControl.visible = false
button_group.visible = false


lastMouse = 
	x:  0
	y: 0
	virgin: true
	
	
`function isRetinaDisplay() {
        if (window.matchMedia) {
            var mq = window.matchMedia("only screen and (min--moz-device-pixel-ratio: 1.3), only screen and (-o-min-device-pixel-ratio: 2.6/2), only screen and (-webkit-min-device-pixel-ratio: 1.3), only screen  and (min-device-pixel-ratio: 1.3), only screen and (min-resolution: 1.3dppx)");
            return (mq && mq.matches || (window.devicePixelRatio > 1)); 
        }
    }`
	

	
	
flow = new FlowComponent
flow.showNext(teamDashboard)

userTeams = 
	"RCL": true
	"Pinch Labs": false
	"Tabby": true

forceFlowUpdate = () ->
	teamCreate.size = Canvas.size
	teamDashboard.size = Canvas.size
	teamSignOrCreate.size = Canvas.size
	teamManagement.size = Canvas.size
	teamDetailView.size = Canvas.size
	teamCreatePending.size = Canvas.size
	teamCreateSuccess.size = Canvas.size
	flow.size = Canvas.size
	

randos = 
	'Mark Sythers': false
	'Michelle Tan': false
	'Gordon Rubens': false
	'Theresa Papadopolous': false
	'Franz Soulle': false
	'Mick Chan': false

randomizeRandos = () ->
	for person, value of randos
		if Math.random(1) < 0.5
			randos[person] = true

randomizeRandos()
			
updateRandos = () ->
	dice = Math.random(1)
	for person, isActive of randos
		if Math.random(1) <0.01  #randomly flip
			if person is true then person = false
			else person = true
						
		

results = {} #this is where the results of the form end up

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

	if workInertiaActive
		if lastMouse.virgin is true # Set the initial value
			lastMouse.virgin = false
			lastMouse.x = mouseX
			lastMouse.y = mouseY
		else
			if (lastMouse.x isnt mouseX) or (lastMouse.y isnt mouseY)
				if workInertia <= 16 then workInertia += 3 #some work energy
			else
				workInertia -= 3 #gravity pulls down anything not moving
		lastMouse.x = mouseX
		lastMouse.y = mouseY
	
	
	
	
@updateCloudPhotoRotation = (angle) ->
#	cloud_png.rotation = angle
#	CocoaBridge.photoRotated_(angle)

@flipCloudPhoto = () ->
#	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
#	photoLabel.text = text

@updateUserName = (myName, userID) ->
# 	if userID?
	username = myName
	cocoaBridgeIsUp = true
	
	
	

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


if sandbox then username = "Elon Musky"
if username  is ""  then username = "David Buacello"



# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'

# UI variables 
cellSize = 56


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
		updateUserList()
	else 
		scrollEmptyStateLabel.animate("connected")
		updateUserList()
		serverReady = true



#################
# Initialize








# set up all the buttons
myButtonArray = []

allButtons = new Layer
	parent: teamDashboard
	width: Screen.width
	height: 100
	backgroundColor: 'transparent'



showMotivationOverlay = (key) ->
	if key is '🏆' then showConfetti()
	motivationOverlay.backgroundColor = '#D1C300'
# 	motivationOverlay.opacity = 1
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
	
	
showConfetti = () ->
	if !shouldStop then return
	confettiLayer.opacity = 1
	confettiStart()
	Utils.delay 5, ->
		hideConfetti  = new Animation confettiLayer,
			opacity: 0
			options:
				time: 5
		hideConfetti.on Events.AnimationEnd, ->
			confettiStop()
		hideConfetti.start()


	
buttonTips = new TextLayer
	parent: teamDashboard
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
		borderColor: 'white' 
		

	@myLayer.states.down = 
		backgroundColor: '#B6C9E0'
		
	@myLayer.states.over = 
		backgroundColor: '#333A43'
	
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
		motivationOverlay.backgroundColor = myButtonColor[name]
		writeNewEvent(username, name)
		showMotivationOverlay(name)
		
	myButtonArray.push(@myLayer)
	
	
#### emoji buttons

myButtons = ['👋','🔨','🤔','🏆','☕️','🍔','🚌','🚪']

myButtonHelperText = 
	'👋': 'Hi!'
	'🤔': 'Little feedback/help?'
	'🔨': 'Hammering on something'
	'🚌': 'Travelling/ extra-remote'
	'🏆': 'Winning!'
	'☕️': 'Shorter break'
	'🍔': 'Longer break'
	'🚪': 'Heading out the door.'
	
myButtonColor = 
	'👋': '#B37BA4'
	'🤔': '#6EEB83'
	'🔨': '#A5CCD1'
	'🚌': '#64A6BD'
	'🏆': '#ffff00'
	'☕️': '#FF206E'
	'🍔': '#EE6055'
	'🚪': '#161925'
	
	
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



########## team control UI

updateUserTeamUI = () ->
	for things in teamListControl.children
		things.destroy()
		
	
	lastXPosition = 0
	for theTeam, isActive of userTeams
		if isActive then textOpacity = 1 else textOpacity = 0.2
		buttonTeam = new TextLayer
			name: theTeam
			parent: teamListControl
			x: lastXPosition
			y: Align.center()
			fontSize: 11
			color: 'white'
			fontWeight: 600
			padding: 2
			y: Align.center()
			text: theTeam
			opacity: textOpacity
		lastXPosition = (buttonTeam.maxX + 4)
		
		buttonTeam.onClick (event, layer) ->
			tempName = ""
			tempName = layer.name
			for iTeam, value of userTeams
				if userTeams[tempName] is true
					userTeams[tempName] = false
				else userTeams[tempName] = true
				updateUserTeamUI()
	
updateUserTeamUI()



button_group.onClick (event, layer) ->
	flow.showNext(teamManagement)
		
		
buttonArrowBack.onClick (event, layer) ->
	flow.showPrevious()
################

#set the states to down. Prettier way is possble to do this using States, todo
Screen.backgroundColor = '#606A77'



# update the main view
updateTabbyView = () ->
	maxDimension = Math.min(teamDashboard.width, (teamDashboard.height - cellSize))
	tabbyView.y = 0
	tabbyView.height = maxDimension
	tabbyView.width = maxDimension
	tabbyView.midX = Screen.midX
	
tabbyView = new Layer
	parent: teamDashboard
	backgroundColor: '#444B54'
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
	parent: bottom_rectangle
	size: Screen.size
	scrollHorizontal: false
	height: cellSize
	width: Screen.width
	y: Align.bottom
	backgroundColor: "#444B54"
scroll.scrollHorizontal = true
scroll.scrollVertical = false

scroll.mouseWheelEnabled = true

scroll.content.backgroundColor = 'transparent'
#empty state
funCheckingText = Utils.randomChoice(['checking alleyways…', 'meowing for others…', 'sniffing internets…', 'coolpeeps radar on…', 'anyone cool as you?…', 'helloooo world…'])

scrollEmptyStateLabel = new TextLayer
	parent: scroll
	backgroundColor: 'transparent'
	fontSize: 11
	textAlign: "center"
	fontWeight: 400
	letterSpacing: 1
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
		workInertiakey =  userPath + '/workInertia'
		workInertia = Math.max(workInertia, 0)
		demoDB.put(workInertiakey, workInertia)
	
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

############## work inertia workinertia stuff

colorFromInertia = (theUserName, inertiaLevel) ->
	return  Color.mix("#4C545E", colorFromName(theUserName), (theInertia /16), true)
	
# blurry fuzzy thing
updateUserWorkInertia = (theUsers) ->
	if !workInertiaActive then return #override for when innactive
	for theUser,userData of theUsers
		if theUsers[theUser]['workInertia']?
			theInertia = theUsers[theUser]['workInertia']
			for theLayer in scroll.content.children
				if theLayer.name is theUser
# 					theLayer.children[2].width = theInertia 
# 					theLayer.children[2].height = theInertia 
# 					theLayer.children[2].center()
					
					lastUserWorkInertiaLevel[theUser] = theInertia

					newCellColor = colorFromInertia(theUser, theInertia) 
# 					theLayer.backgroundColor = newCellColor
					animateInertia = new Animation theLayer,
						backgroundColor: newCellColor
						options:
							time: 9
					
					animateInertia.start()






############ Badge stuff
updateUsersBadge = (theEvent) ->
	#update the users's badge
	# somebug lives here
	if theEvent.eventKey isnt '' #if the event isnt blank
		for theLayer in scroll.content.children
			if theLayer.name is theEvent.username
				badgeLayer = theLayer.children[1]
				badgeLayer.text = theEvent.eventKey
				badgeLayer.opacity = 1
				try fadeOutStateAnimation = new Animation badgeLayer,
					opacity: 0
					options:
						time: 1
				
				Utils.delay 300, -> 
					fadeOutStateAnimation.start()
					#keep it on the screen for 5 minutes before fadeing out
					#todo consider making the times dynaic to the event. For example,
					# 9 minute coffee

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
					
					
					if theEvent.eventKey is '🏆' and theEvent.username isnt username  
						showConfetti()
					
					#now we show the local notifications as well as the Mac one
					if theEvent.username isnt username #don't show the notification if it's me
						showNotificationBanner(eventNotification, theEvent.eventKey)
						
					if theEvent.username isnt username #don't show the notification if it's me
						if !sandbox
							try CocoaBridge.showMacNotification_(eventNotification) #send it to the mac

					updateUsersBadge(theEvent)

									 


Utils.interval 10, ->
	if firebaseStatus is 'connected' and workInertiaActive
		userListKey = "/users/"
		demoDB.get userListKey, (theUsers) ->
			
			updateUserWorkInertia(theUsers)
			updateUserList()

updateMacUserID = (userID) ->
	CocoaBridge.writeUDID_(userID) #send it to the mac
		
		

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




##############


# set up form inputs
# Made by Taylor Palmer from uxtools.co
# Need help? Contact me at taylor@uxtools.co

# Using Benjamin's input module: 
# https://github.com/benjamindenboer/FramerInput
{InputLayer} = require "input"

# Reset the cursor to normal
document.body.style.cursor = "auto"

# Turn off purple hints
Framer.Extras.Hints.disable()

# Original Form Data

# Object where we store the data
data =
	name: ""
	name2: ''
	type: "Dog"
	age: 2
	notes: ""
	personality: ""
	fixed: false

# Function used to display data on screen using the "results" textLayer
displayFormData = () ->
	results.text = JSON.stringify(data)
	
# Fire it on load
displayFormData()

# Text Input

# This function wraps the layer in a real input
input1 = InputLayer.wrap(textInput, placeholderText)
input1.fontWeight = 800
input1.backgroundColor = 'white'
# When the user types...
input1.onValueChange ->
	# Store the data in the Object
	data.name = input1.value
	# And display it on the screen.
	displayFormData()
	
	
# remember to name inputs with care
	


# Drop Down

# # When the drop down is clicked
# dropDown.onClick () ->
# 	# Show or hide its menu
# 	if dropDownMenu.visible
# 		dropDownMenu.visible = false
# 	else
# 		dropDownMenu.visible = true
# 
# 	# For each menu option
# 	for option, i in dropDownMenu.children
# 		# When it's clicked
# 		dropDownMenu.children[i].onClick (event, layer) ->
# 			# Show the selected option in the drop down
# 			dropDown.selectChild("text").text = layer.text
# 			# Hide the menu
# 			dropDownMenu.visible = false
# 			# Update the data
# 			data.type = layer.text
# 			# Display data on screen
# 			displayFormData()

# Stepper

# # This function wraps the layer in a real input
# stepper1 = InputLayer.wrap(stepper, stepperText)
# stepper1.value = 2
# 
# increaseValue = () ->
# 	currentValue = parseInt(stepper1.value)
# 	stepper1.value = currentValue + 1
# 	# Store the data in the Object
# 	data.age = stepper1.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# decreaseValue = () ->
# 	currentValue = parseInt(stepper1.value)
# 	stepper1.value = currentValue - 1
# 	# Store the data in the Object
# 	data.age = stepper1.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# stepUp.onClick () ->
# 	increaseValue()
# 	
# stepDown.onClick () ->
# 	decreaseValue()
# 
# stepper1._inputElement.addEventListener 'keydown', (event) ->
# 	initialValue = parseInt(stepper1.value)
# 	# If it's the arrow up key
# 	if event.which == 38
# 		increaseValue(initialValue)
# 	# If it's the arrow down key
# 	if event.which == 40
# 		decreaseValue(initialValue)
# 		
# # When the value changes...
# # Note: this won't catch the clicks on the arrows
# # 		because they aren't real events on the input
# stepper1.onValueChange ->
# 	# Store the data in the Object
# 	data.age = stepper1.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# # Multi-line Text Input

# # This function wraps the layer in a real input
# input2 = InputLayer.wrap(textarea, textareaText, multiLine: true)
# # When the user types...
# input2.onValueChange ->
# 	# Store the data in the Object
# 	data.notes = input2.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# # Radio Buttons

# # Create array of radio buttons
# radioButtons = [RadioBase1, RadioBase2, RadioBase3]
# 
# # Loop through the array
# for button, i in radioButtons
# 	# Find the "outerCircle" child layer
# 	# and creates states for it
# 	button.selectChild("outerCircle").states =
# 		selected:
# 			backgroundColor: "#1199EE"
# 			borderColor: "transparent"
# 		deselected:
# 			backgroundColor: "white"
# 			borderColor: "#CED4DA"
# 	# When a radio button is clicked
# 	radioButtons[i].onClick (event, layer) ->
# 		# Deselect all the radio buttons
# 		for button, c in radioButtons
# 			radioButtons[c].selectChild("outerCircle").stateSwitch("deselected")
# 		# Select the one that was clicked
# 		layer.selectChild("outerCircle").stateSwitch("selected")
# 		# Update the data object
# 		data.personality = layer.selectChild("label").text
# 		# And display it on the screen.
# 		displayFormData()

# Check Box

# # Create states for the check icon
# checkIcon.states =
# 	selected:
# 		fill: "#1199EE"
# 	deselected:
# 		fill: "white"

# # When the check box is clicked
# checkBox.onClick (event, layer) ->
# 	# Toggle the states of the icon
# 	checkIcon.stateCycle("selected", "deselected")
# 	# Use the name of the state to update the data property
# 	if checkIcon.states.current.name == "selected"
# 		data.fixed = true
# 	else
# 		data.fixed = false
# 	# Display the data on screen
# 	displayFormData()

# testRectangle.clip = false

Canvas.on "change:size", ->
	forceFlowUpdate()




# Canvas.on "change:size", ->
# 	Utils.delay 0.1, ->
# 		Framer.Device.deviceType = "fullscreen"









#############

# window resizes #########


window.onresize = () ->
	updateCanvasDimensions?()

updateCanvasDimensions = () ->
	teamDashboard.width = Canvas.width
	teamDashboard.height = Canvas.height
	scroll.width = teamDashboard.width
	scroll.y = Align.bottom
	updateTabbyView?()
	if scrollEmptyStateLabel?
		scrollEmptyStateLabel.midX = teamDashboard.midX
		
	updateButtonLayout(myButtonArray, myButtons)
	#update where the buttons are placed
	
	
updateCanvasDimensions?()

colorFromName = (name) ->
	firstLetter = 15* name.charCodeAt(0)
	firstLetter += (name.length * 2) 
	
	myHue = firstLetter%360
	theColor = new Color
		h: myHue
		l: 0.30
		s: 1
	return theColor
	
	
	

window.addEventListener "keydown", (keyboardEvent) ->
	switch keyboardEvent.keyCode
		when 40
			teamDashboard.backgroundColor = '#441111'
			username = "Ima Testing!"


clearScrollView = () ->
	for keys, things of scroll.content.children
		things.destroy()
 
makeStringFromObject = (theObject) ->
	theString = ""
	for theUsername, theUserdata of theObject
		if isFresh(theUserdata.lastUpdated)
			theString += theUsername
	return theString




updateUserList = () ->
	
	# here we update all the 
	if firebaseStatus isnt 'connected' then return
	userListKey = "/users/"
	demoDB.get userListKey, (theUsers) ->
		
		if oldUserString is makeStringFromObject(theUsers)
			return
		
		oldUserString = makeStringFromObject(theUsers)
		
		if not isJson(theUsers)
			return

		if scroll.content.children.length > 0
			clearScrollView?()
			
		
		numUsers =  Object.keys(theUsers).length
		
		userArray = []
		
		for theUsername, theUserdata of theUsers
			if isFresh(theUserdata.lastUpdated)
				if theUsername isnt 'Keith Testing'
					if theUsername isnt 'Elon Musky' 
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
				clip: false
			
			
			# todo code to change daylight / sunglight cell brightness
# 			testView = new Layer
# 				width: 64
# 				height: 64
# 				backgroundColor: '#333333'
# 				clip: true
# 				visible: false
# 				
# 			now = new Date()
# 			timeString = now.toTimeString()
# 			
# 			localTimeLabel = new TextLayer
# 				parent: testView
# 				width: parent.width
# 				height: parent.height
# 				text: timeString
# 				fontSize: 9
# 				fontWeight: 800
# 				color: 'white'
# 				textAlign: 'center'
# 				y: Align.center
# 				x: Align.center()
				
				
			
			midnightBlue = new Color ('#1B0165')
			middayBlue = new Color ('#0F96E9')
			
			convertToSunlightFactor= (theDate) ->
				# take 24 hour clock and make rough 0..1 for brightness
				if not theDate?
					myHours = 1
					myMinutes = 0
				
				else
					myHours = theDate.getHours() 
					myMinutes = theDate.getMinutes()
			
				
				dayFactor = myHours 
				dayFactor = (myHours + (myMinutes / 60 ))/ 24
				if dayFactor < 0.5 then sunlightFactor = dayFactor * 2
				else sunlightFactor = 1 - (2 * (dayFactor - 0.5))
				return sunlightFactor
				



			
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
				x: Align.center()
				y: 0
				text:  (userInitials.replace(/\s/g, '\n'))
				textAlign: 'center'
				fontWeight: 600
				fontSize: 9
				letterSpacing: 1
				color: 'white'
				padding: 4
			
			#tofix
			try cell.backgroundColor = colorFromInertia(userInitials, (lastUserWorkInertiaLevel[userInitials]))
			
			if userArray[index] is username
				cellLabel.color = '#ffffff'
				
			cellBadge  = new TextLayer
				parent: cell
				text: ''
				fontSize: 12
				y: Align.bottom(-8)
				x:8 
				opacity: 1
				backgroundColor: 'transparent'
				

				
				

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


# Motivation Overlay Setup
motivationOverlay = new Layer
	parent: teamDashboard
	width: Screen.width
	height: Screen.height
	backgroundColor: '#D1C300'
	opacity: 0


	
	
motivationOverlay.states.appear = 
	midX: Screen.midX
	midY: Screen.midY
	opacity: 0
	rotation: 0
# 	animationOptions:
# 		time: 0
# 		curve: Spring(tension: 100, friction: 25)

#motivationOverlay.animate('appear')

segmentBlending = 'screen'
segmentOpacity =1
segmentFile = 'images/sunburst-yellow.png'

segments1 = new Layer
	parent: motivationOverlay
	image: segmentFile
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	blending: segmentBlending
	opacity: segmentOpacity

rotate1 = new Animation segments1,
	rotation: 86
	options:
		time: 6
		curve: 'linear'

rotate1.start()

segments2 = new Layer
	parent: motivationOverlay
	image: segmentFile
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	rotation: 90
	blending: segmentBlending
	opacity: segmentOpacity
	
rotate2 = new Animation segments2,
	rotation: 120
	options:
		time: 4
		curve: 'linear'
rotate2.start()


segments3 = new Layer
	parent: motivationOverlay
	image: segmentFile
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	rotation: -90
	blending: segmentBlending
	opacity: segmentOpacity
	
	
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
	backgroundColor: 'transparent'
	
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
			
			
			userListKey = "/users/"
			demoDB.get userListKey, (theUsers) ->
				updateUserWorkInertia(theUsers)


serverReady = () ->
	try updateUserList()
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


Utils.interval 2, ->
	if !cocoaBridgeIsUp
		if Math.random(1) > 0.2
			@updateMouseX(Math.random(1),0)
		else 
			@updateMouseX(1,1)
if sandbox
	sandBoxNote = new TextLayer
		text: 'SANDBOX'
		fontSize: 9
		fontWeight: 800
		color: 'black'
		padding: 2







# constant to define the max number of confetti on screen
NUM_CONFETTI = 128
# possible colors
COLORS = [[85,71,106], [174,61,99], [219,56,83], [244,92,68], [248,182,70]]
# mmm pi
PI_2 = 2*Math.PI

# make a holder for the confetti
confettiLayer = new Layer width: Screen.width, height: Screen.height, backgroundColor: "transparent"

# stick a canvas element in it
confettiLayer._element.innerHTML = "<canvas id='world'></canvas>"

# register the canvas with a variable
canvas = document.getElementById "world"
context = canvas.getContext "2d"

#set its height and width
window.w = canvas.width = confettiLayer.width
window.h = canvas.height = confettiLayer.height

# make it resize when the screen resizes
resizeWindow = ->
	window.w = canvas.width = confettiLayer.width
	window.h = canvas.height = confettiLayer.height

window.addEventListener 'resize', resizeWindow, false

# Utils.delay 1, -> resizeWindow 0

# helper function to draw a circle to a canvas
drawCircle = (x,y,r,style) ->
	context.beginPath()
	context.arc(x,y,r,0,PI_2,false)
	context.fillStyle = style
	context.fill()

xpos = 0.5

# this is what makes the confetti follow the mouse
document.onmousemove = (e) ->
	xpos = e.pageX/w

# this is the thing that makes the confettis
class Confetti
	# this builds a confetti
	constructor: ->
		@style = COLORS[~~Utils.randomNumber(0,5)]
		@rgb = "rgba(#{@style[0]},#{@style[1]},#{@style[2]}"
		@r = ~~Utils.randomNumber(2,6)
		@r2 = 2*@r
		@replace()
	# this positions the confetti
	replace: ->
		@opacity = 0
		@dop = 0.03*Utils.randomNumber(1,4)
		@x = Utils.randomNumber(-@r2,w-@r2)
		@y = Utils.randomNumber(-20,h-@r2)
		@xmax = w-@r
		@ymax = h-@r
		@vx = Utils.randomNumber(0,2)+8*xpos-5
		@vy = 0.7*@r+Utils.randomNumber(-1,1)
	# this draws the confetti
	draw: ->
		@x += @vx
		@y += @vy
		@opacity += @dop
		if @opacity > 1
			@opacity = 1
			@dop *= -1
		@replace() if @opacity < 0 or @y > @ymax
		if !(0 < @x < @xmax)
			@x = (@x + @xmax) % @xmax
		drawCircle(~~@x,~~@y,@r,"#{@rgb},#{@opacity})")

# this makes an array full of constructed confetti from above
confetti = (new Confetti for i in [1..NUM_CONFETTI])

# this kicks off an animation loop to make the confetti move
# theres a way to replace this with the framer loop that would
# probably make it a bit more performant but i cant
# remember how
window.step = ->
	if !shouldStop 
		requestAnimationFrame(step)
		context.clearRect(0,0,w,h)
		c.draw() for c in confetti

# this starts the first loop
Utils.delay .1, -> 
	step()
	

	
confettiStart = () ->
	confettiLayer.visible = true
	shouldStop = false
	step()
confettiStop = () ->
	shouldStop = true
	confettiLayer.visible = false
		

	


configTeam = () ->
	#todo if user has no teams, then create a /teamMemberships and in it add 
	# /tabby which has property of /active = true and /description which is 'A public channel for all '




forceFlowUpdate()
