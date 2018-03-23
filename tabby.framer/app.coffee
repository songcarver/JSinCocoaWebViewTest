{InputLayer} = require "input"

Utils.insertCSS("[contenteditable]:focus { outline: 0px solid transparent; }") # removes selection border of `contenteditable´



# testing variables 
sandbox = true
shouldStop = false
testFirstRun = false
demoMode = true

# variable setup
userAction = ''
####################
countReturned = 0
# UI variables 
cellHeight = 48
cellWidth = 64

Framer.Extras.Hints.disable()

lastUserWorkInertiaLevel = {}
data = {}
newTeamName = ""
teamName = ""
haveConfetti = false
teamPath = ''
appVersion = 0.17
appVersionString = ''
username = ''
cocoaBridgeIsUp = false
workInertiaActive = true
testingWorkInertia = false
localTeamDirectory = new Object
workInertia = 0
if testingWorkInertia
	workInertia = 4
lastWorkInertiaTimeCheck = 0


button_group.visible = true

firstRun = false
if testFirstRun then firstRun = true

newTeamKey = ""
teamCode = ""
newTeamName = ""
teamKey = ""
path = ""
teamPath = ""
newTeamCode = ""
newUser = true

localUserTeamMembershipsList = {}
localTeamDirectory = {} #local key value pair to 

lastMouse = 
	x:  0
	y: 0
	virgin: true
	
	
button_group.visible = false
	
`function isRetinaDisplay() {
        if (window.matchMedia) {
            var mq = window.matchMedia("only screen and (min--moz-device-pixel-ratio: 1.3), only screen and (-o-min-device-pixel-ratio: 2.6/2), only screen and (-webkit-min-device-pixel-ratio: 1.3), only screen  and (min-device-pixel-ratio: 1.3), only screen and (min-resolution: 1.3dppx)");
            return (mq && mq.matches || (window.devicePixelRatio > 1)); 
        }
    }`
	
`function isEmpty(obj) {
	for(var key in obj) {
		if(obj.hasOwnProperty(key))
			return false;
	}
	return true;
}`

	
flow = new FlowComponent
flow.showNext(homeScreen, animate: false)
flow.header = navBar
flow.header.visible = false

userTeams = {}


printOutKeys = (objectToInspect) ->
	for keys, value of objectToInspect
		print 'key: ' + keys + ' value: '+ value
	
# redraw all the views when the window resizes
forceFlowUpdate = () ->
	teamCreateScreen.size = Canvas.size
	homeScreen.size = Canvas.size
	teamSignOrCreateScreen.size = Canvas.size
	teamManagementScreen.size = Canvas.size
	teamDetailViewScreen.size = Canvas.size
	teamCreatePendingScreen.size = Canvas.size
	teamCreateSuccessScreen.size = Canvas.size
	errorOverlayScreen.size = Canvas.size
	noTeamInfoScreen.size = Canvas.size
	welcome1Screen.size = Canvas.size
	welcome2Screen.size = Canvas.size
	welcome3Screen.size = Canvas.size
	teamSignOrCreateScreen.size = Canvas.size
	licenceScreen.size = Canvas.size
	homeScreen.size = Canvas.size
	teamJoinScreen.size = Canvas.size
	teamCreateSuccessScreen.size = Canvas.size
	teamCreateScreen.size = Canvas.size
	teamManagementScreen.size = Canvas.size
	teamDetailViewScreen.size = Canvas.size
	teamCreatePendingScreen.size = Canvas.size
	teamJoinSuccess.size = Canvas.size
	
	
	
	
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
	

motivationalStringArray = [ "You got this.", "You've done this before.", "Be a force of nature.","Use the force.", "Remember the why.", "Do it.", "Got those cans on?", "Hit play.", "Only you can do this.", "Work is Soul."  ]


# https://open.spotify.com/album/52PLNrXUMtPUZwcueV75J1

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
				workInertia -= 1 #gravity pulls down anything not moving
		lastMouse.x = mouseX
		lastMouse.y = mouseY
	
	
	
	
@updateCloudPhotoRotation = (angle) ->
#	cloud_png.rotation = angle
#	CocoaBridge.photoRotated_(angle)

@flipCloudPhoto = () ->
#	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
#	photoLabel.text = text



doFirstRunThings = () ->
	# lets check if this is a new user


@updateUserName = (myName, userID) ->
# 	if userID?
	username = myName
	cocoaBridgeIsUp = true
	
	if !firstRun then doFirstRunThings()
	firstRun = true
	
	
getKeyValueFromMacStorage = (theKey) ->
	try CocoaBridge.getKeyValueFromMac_(message)

	
@setKeyValueFromMac = (key, value) ->

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


if sandbox then username = "JS Bach"
if username  is ""  then username = "Tabby McTabby"



# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'

# kick off a timer to make sure we can connect. 
Utils.delay 4, ->
	if firebaseStatus is ''
	# was unable to connect on launch, prob no network
	# todo hide team UI, go to offline mode
		teamListControl.visible = false
		clearScrollView()
		scrollEmptyStateLabel.midX = Screen.midX
		scrollEmptyStateLabel.animate("disconnected")
		scrollEmptyStateLabel.midX = Screen.midX
		
	
		oldUserString = "" #reload user list after outage
# 		updateUserCellView()
		button_group.visible = false
		buttonWin.visible = false
		buttonHammering.visible = false
		buttonWave.visible = false
		#todo make sure I put these back visible when we go back online
		
	
	

if sandbox
	#SANDBOX
	
	tabbyDB = new Firebase
		projectID: "tabbysandbox" # ... Database → first part of URL
		secret: "TBkoOoRnmPev8TfFtcTJViG3Wb0gFP1IGVXoJ8kT" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)

else
# 	PRODUCTION ONE:
# 	The required information is located at https://firebase.google.com → Console → YourProject → ...
	tabbyDB = new Firebase
		projectID: "tabbytest-8e201" # ... Database → first part of URL
		secret: "oParj369e6kYid1tungWZPDTMnYgrwOaC0hmBCnG" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)



#cloudready
tabbyDB.onChange "connection", (status) ->
	if status? then firebaseStatus = status
	# status is either `connected´ or `disconnected´
	if firebaseStatus is 'disconnected'
		teamListControl.visible = false
		clearScrollView()
		scrollEmptyStateLabel.animate("disconnected")
		scrollEmptyStateLabel.x = Align.center
		oldUserString = "" #reload user list after outage
# 		updateUserCellView()
		button_group.visible = false
		
		
	if firebaseStatus is 'connected' 
		button_group.visible = true
		teamListControl.visible = true
		scrollEmptyStateLabel.animate("connected")
# 		updateUserCellView()
		serverReady = true
		
		button_group.visible = true
		buttonWin.visible = true
		buttonHammering.visible = true
		buttonWave.visible = true
		getTeamSubscriptionsFromCloud(drawTeamToggleView)
		#when we get the human names for teams back, then draw view
		
# 		updateUserCellView()
		
		button_group.visible = true




#################
# Initialize








# set up all the buttons
myButtonArray = []

allButtons = new Layer
	parent: homeScreen
	y: Align.bottom(0)
	width: Screen.width
	height: 80
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
				time: 9
		hideConfetti.on Events.AnimationEnd, ->
			confettiStop()
		hideConfetti.start()


	
buttonTips = new TextLayer
	parent: homeScreen
	text: ''
	fontSize: 11
	fontWeight: 800
	color: '#111111'
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


#apply mouseDown behaviour to the set of buttons
for layers in buttonFrame.children
	layers.states.down = 
		backgroundColor: '#B6C9E0'
		
	layers.states.over = 
		backgroundColor: '#E3E3E0'
	
	layers.onMouseDown (event, layer) ->
		layer.stateSwitch('down')

buttonWin.onClick ->
	name = '🏆'
	motivationOverlay.backgroundColor = myButtonColor[name]
	writeNewEvent(username, name)
	showMotivationOverlay(name)
	buttonFramesReset()
		
buttonHammering.onClick ->
	name = '🔨'
	motivationOverlay.backgroundColor = myButtonColor[name]
	writeNewEvent(username, name)
	showMotivationOverlay(name)
	buttonFramesReset()
	
buttonWave.onClick ->
	name = '👋'
	motivationOverlay.backgroundColor = myButtonColor[name]
	writeNewEvent(username, name)
	showMotivationOverlay(name)
	buttonFramesReset()
	
		
		
buttonFrame.onMouseUp ->
	buttonFramesReset()


buttonFramesReset = ->
	for layers in buttonFrame.children
		layers.stateSwitch('default')
	
		
#Event buttons
createButtonLayer = (name, x, y) ->
	@myLayer = new TextLayer
		parent: allButtons
		name: name
		text: name
		fontSize: 14
		padding: 8
		backgroundColor: '#F8F8F6'
		borderRadius: 1

		

	@myLayer.states.down = 
		backgroundColor: '#B6C9E0'
		
	@myLayer.states.over = 
		backgroundColor: '#E3E3E0'
	
	@myLayer.states.default = 
		x: x
		backgroundColor: '#F8F8F6'
		
		
	
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
	


# #fun extras
# Events.wrap(window).addEventListener "keydown", (event) ->
# 	if firebaseStatus isnt 'connected'
# 		return
# 	switch event.keyCode
# 		when 72 then name = '🎧' # hit h
# 		when 69 then name = '🐓' # hit e
# 		when 67 then name = '🤔☕️' # hit cell
# 		when 76 then name = '🤔🍔' # hit L
# 		else return
# 	motivationOverlay.backgroundColor = myButtonColor[name]
# 	writeNewEvent(username, name)
# 	showMotivationOverlay(name)
	
		
		
		
#### emoji buttons

myButtons = ['👋','🔨','👏','🏆','☕️','🍔','🔋','🚪']

myButtonHelperText = 
	'👋': 'Hi!'
	'👏': 'Clap to kudos'
	'🔨': 'Hammering on something'
	'🔋': 'Recharging'
	'🏆': 'Winning!'
	'☕️': 'Shorter break'
	'🍔': 'Longer break'
	'🚪': 'Heading out the door'
	
myButtonColor = 
	'👋': '#B37BA4'
	'👏': '#6EEB83'
	'🔨': '#A5CCD1'
	'🚌': '#64A6BD'
	'🏆': '#ffff00'
	'☕️': '#FF206E'
	'🍔': '#EE6055'
	'🚪': '#161925'
	
	

# for buttons in myButtons
# 	createButtonLayer(buttons)


# here's an alternative labelling

formatForMinutesAndSeconds = (totalSeconds) ->
	workingString = ''
	minutes = Math.floor(totalSeconds / 60)
	if minutes < 10 then workingString = '0'
	workingString += minutes
	workingString += ':'
	seconds = Math.ceil(totalSeconds % 60)
	if seconds <10 then workingString += '0'
	workingString += seconds
	return workingString
	
buttonStart.onClick ->
	#Pomodoro
	
	name = '▶'
	motivationOverlay.backgroundColor = myButtonColor[name]
	writeNewEvent(username, name)
	buttonFramesReset()
	
	motivationalQuote.text = Utils.randomChoice(motivationalStringArray)
	Utils.delay 300, ->
			motivationalQuote.text = Utils.randomChoice(motivationalStringArray)
	Utils.delay 600, ->
		motivationalQuote.text = Utils.randomChoice(motivationalStringArray)
	Utils.delay 1200, ->
		motivationalQuote.text = Utils.randomChoice(motivationalStringArray)
	
	
# 	timeText.minY = motivationalQuote.maxY  #this should be moving the text to sit below, but it's not working well
	
	
	# Count-down animation
	flow.showNext(workSession)	
	flow.showOverlayCenter(workSessionCount3)
	
	Utils.delay 1, ->
		flow.showOverlayCenter(workSessionCount2)
	Utils.delay 2, ->
		flow.showOverlayCenter(workSessionCount1)
	Utils.delay 3, ->
		flow.showOverlayCenter(workSessionCount4)
		
	Utils.delay 4, ->
		flow.showNext(workSession, animate:false)
		startTimer((25 * 60), showSessionFinish, workTickUpdate)
	
workTickUpdate = (percentage, secondsRemaining) ->
	frameTimeBar.width = ((Screen.width - 20) * percentage)
	timeText.text = formatForMinutesAndSeconds(secondsRemaining)

showSessionFinish = ->

	name = '🏆'
	motivationOverlay.backgroundColor = myButtonColor[name]
	writeNewEvent(username, name)
	showMotivationOverlay(name)
	buttonFramesReset()
	
	
	eventNotification  = 'You did it.'
	message = eventNotification
	try CocoaBridge.showMacNotification_(message) #send it to the mac	
	flow.showNext(workSessionComplete)
	startTimer(5 * 60 , showRelaxFinish, relaxTickUpdate)
	
relaxTickUpdate = (percentage, secondsRemaining) ->
	relaxTimeBar.width = ((Screen.width - 20) * percentage)
	relaxTimeDisplay.text = formatForMinutesAndSeconds(secondsRemaining)
	

showRelaxFinish = ->
	eventNotification  = 'Relax time finished.'
	message = eventNotification
	try CocoaBridge.showMacNotification_(message) #send it to the mac	
	flow.showPrevious(homeScreen)
	
	
	
buttonStop.onClick ->
	stoptimer()
	flow.showNext(homeScreen, animate: false)
	
buttonStopRelaxing.onClick ->
	flow.showNext(homeScreen)
	



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

drawTeamToggleView = (callback) -> # draw the text controls for turning on and off teams
	lastXPosition = 0
	c = 0
	
	# set up the team cickable labels


	#delete the old buttons
	for things in teamListControl.children
		things.destroy()
		
	for theTeamCode, isActive of userTeams
		if isActive then textOpacity = 1 else textOpacity = 0.2
		tempName = ""
		tempName = localTeamDirectory[theTeamCode] 
		buttonTeam = new TextLayer
			name: theTeamCode
			parent: teamListControl
			x: lastXPosition
			y: Align.center()
			fontSize: 10
			color: 'white'
			fontWeight: 800
			padding: 2
			y: Align.center()
			text: tempName
			opacity: textOpacity
			textTransform: 'uppercase' 
		lastXPosition = (buttonTeam.maxX + 4)
		
		teamListControl.bringToFront()	
		
		
		
		#just a temp color to show user what's changed, ie what new team they joined
		if theTeamCode is teamName
			buttonTeam.color = 'red'
			teamButtonAnimation = new Animation buttonTeam,
				color: '#606A77'
				options:
					time: 20
			teamButtonAnimation.start()
			teamName = ""
		
		
		#this logic toggles teams being on or off (actively filtering or not)
		buttonTeam.onClick (event, layer) ->
			tempName = ""
			tempName = layer.name
			
			for iTeam, value of userTeams
				if iTeam is layer.name # to solve for non-unique layer names
					if value is true
						userTeams[iTeam] = false
					else userTeams[iTeam] = true
					updateUserTeamUI()
					#todo update Cell view
			
			updateUserCellView()		
	callback?()

updateUserTeamUI = (callback) ->
	if Object.keys(userTeams).length is 0
		return
	# if userTeams object is empty, there's no reason to run this
	#delete all existing words
	for things in teamListControl.children
		try things.destroy()
	drawTeamToggleView(callback)
	
updateUserTeamUI()




##### teamflowstuff

button_group.onClick (event, layer) ->
	# show screen to create or sign in
	flow.showNext(teamSignOrCreateScreen)
	teamCode = "tabby"
	teamAddToUserAccount()
	
	teamCode = ""
	flow.header.visible = true

buttonEeek.onClick (event, layer) ->
	flow.showPrevious()
		
navBarButtonArrowBack.onClick (event, layer) ->
	flow.showPrevious()
	
flow.onTransitionEnd ->
	if flow.current is homeScreen
		flow.header.visible = false
	
buttonJoinTeam.onClick (event, layer) ->
	userAction = 'buttonJoinTeam'
	flow.showNext(teamJoinScreen)
	
	

	

	
	

	
################

#set the states to down. Prettier way is possble to do this using States, todo



# update the main view
updateTabbyView = () ->
	maxDimension = Math.min(homeScreen.width, (homeScreen.height - cellHeight))
	tabbyView.y = 0
	tabbyView.height = maxDimension
	tabbyView.width = maxDimension
	tabbyView.midX = Screen.midX
	
tabbyView = new Layer
	parent: homeScreen
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
	height: cellHeight
	width: Screen.width
	y: Align.bottom
	backgroundColor: "#transparent"
scroll.scrollHorizontal = true
scroll.scrollVertical = false

scroll.mouseWheelEnabled = true

scroll.content.backgroundColor = 'transparent'
#empty state
funCheckingText = Utils.randomChoice(['lowers sunglasses…', 'meowing for others…', 'sniffing internets…', 'coolpeeps radar on…', 'anyone cool as you?…', ' meowing…'])

scrollEmptyStateLabel = new TextLayer
	parent: scroll
	backgroundColor: 'transparent'
	fontSize: 9
	textAlign: "center"
	fontWeight: 800
	color: "black" 
	text: funCheckingText
	padding: 4
	x: Align.center()
	y: Align.center()
	textTransform: 'uppercase'
	animationOptions: 
		time: 1


scrollEmptyStateLabel.states.alone =
	text: 'No other cool cats'
	opacity: 1
	textAlign: "center"
	animationOptions:
		time: 1
	
scrollEmptyStateLabel.states.disconnected =
	text: 'Offline. Tabby will keep trying to connect.'
	opacity: 1
	textAlign: "center"
	animationOptions:
		time: 1


#feature
#offline detection
#ping network every 15 seconds
#if previous 2 successful pings were within last minute
# && last 2 failed, then show Mac notification
# how to detect if lid closed?


scrollEmptyStateLabel.states.connected =
	text: ''
	opacity: 0
	textAlign: "center"
	animationOptions:
		time: 1
	
	
scrollEmptyStateLabel.sendToBack()

banner = new Layer
	backgroundColor: '#ffff00'
	height: 48
	width: Screen.width * 3
	
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
	y: -48
	animationOptions:
		time: 0.2


# winnerName.textTransform = "uppercase"
winnerName.x = 40

showNotificationBanner = (eventNotification, eventKey) ->
	winnerName.text = eventNotification
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


		
#teamstuff

getTeamNamesFromCloudWithTeamCode = (callback) ->
# 	making a key value pair of all teams that user is in
# todo This should really be a single object with many properties
#	get each value from the cloud and add it to the team directory 	
	
	localTeamDirectory = {}
	countReturned = 0 #cheap and chirpy way to wait until names all are returned
	
	for aTeam, valueToIgnore of userTeams
		getValuesFromCloud =(aTeam) ->
			p = "/teamDirectory/" + aTeam
			tempATeam = aTeam
			#bug is here
			# database looks good, but never looks up team names
			tabbyDB.get p, (realTeamName) ->
				if realTeamName isnt "" 
				
					#the bug is that tempATeam is the same every tiem
					localTeamDirectory[aTeam] = realTeamName
					countReturned += 1
					if countReturned is Object.keys(userTeams).length
						#this means we've got the last of the team Names back from the serverReady
						
						
						#here there be dragons.
						# problem is that localTeamDirectory looks good here
						# but turns into a single keyed obejct when callback is complete
						drawTeamToggleView()
						
						
		getValuesFromCloud(aTeam)
		


buttonManageTeams.onClick ->
	userAction = 'buttonManageTeams'
	flow.showNext(teamManagementScreen)
	
	#build a string for the UI to display, listing all user's teams
	tempTeamString = ""
	tempCodeString = ""
	for teamCode, Value of userTeams
		tempTeamString += localTeamDirectory[teamCode] +  '\n'
		tempCodeString += teamCode + '\n'	
	teamManagementNameList.text = tempTeamString
	teamManagementCodeList.text = tempCodeString
	
buttonTeamTabby.onClick ->
	flow.showNext(homeScreen)
	
startNewUserFlow = () ->
	teamCode = 'tabby'
	teamLookupTeamNameByCode(teamAddToUserAccount)
	flow.showNext(teamSignOrCreateScreen)


getTeamSubscriptionsFromCloud = (callback) ->
	
	#blow away local team directory
	localTeamDirectory = {}
	
	
	# read the users' team and add them to local array
	
	addToLocalStorage = (eachTeamCode,eachTeamValue ) ->
		userTeams[eachTeamCode] = eachTeamValue
		#add each team to the local array

	theKey = "/users/" + username + '/teams/'
	updateLocalUserTeams =  if userTeams is null then true else false
	
	tabbyDB.get theKey, (teamObject) =>
		#team object looks good
		if teamObject is null
			#this means they're a new user
			startNewUserFlow()
			writeUserStatusEvent(startNewUserFlow) ->
			return

		for eachTeam, value of teamObject
			#eachteam is a team code
			try addToLocalStorage(eachTeam, value)
# 			running this in the Framer IDE means this fails 
			#bookmark
			#debug
			
			if updateLocalUserTeams then [eachTeam] = value #update the local array
		getTeamNamesFromCloudWithTeamCode(callback)
		




teamNameInput = InputLayer.wrap(textInputName, nameTeamPlaceholderText)


buttonIDontHaveTeam.onClick ->
	userAction = 'buttonIDontHaveTeam'
	flow.showNext(noTeamInfoScreen)
	#if user is not in teamTabby, then add them to that team
	
	
buttonCreateTeam.onClick ->
	flow.showNext(teamCreateScreen)
	userAction = 'buttonCreateTeam'
	# When the user types...
teamNameInput.onValueChange ->
	# Store the data in the Object
	data.teamName = teamNameInput.value
	# And display it on the screen.

teamNameInput.onInputFocus ->
	teamNameInput.color = "transparent"
	
buttonCreateTeamWithName.onClick ->
	teamFindFreeCodeAndCreateTeam(data.teamName, getTeamSubscriptionsFromCloud)
# 	textInputName
# todo wrap the text input
# then create a new team based on this name
# add this team to your database
#show success





	



isUserInMyActiveTeams = (userToCheck) ->
	theKey = "/users/" + userToCheck + '/teams/'
	tabbyDB.get theKey, (teamObject) ->
# 		if !teamObject? then do something smart
		for eachTeam, value of teamObject
			if userTeams[eachTeam] = value
				return true
		return false
	
	


teamFindFreeCodeAndCreateTeam = () ->
	# loop through all keys. If one has no property, use that for the next team
	theKey = "/teamDirectory/"
	tabbyDB.get theKey, (teamCodeList) ->
	#find a spare code
		newKey = ""
		for theKey, value of teamCodeList
			if value is ""  #we found an empty slot, create team
				newTeamKey = theKey
				teamCode = newTeamKey
				teamNameString = ""
				teamNameString = data.teamName
				teamPath = '/teamDirectory/' + theKey
				tabbyDB.put(teamPath, teamNameString, teamAddToUserAccount(teamAddedToUserAccountSuccess))
				
				#hacky hack to update force the toggle view to update after joining team
				Utils.delay 2, ->
					drawTeamToggleView()
				break
				
				#now we add this team to the user's account
				
				
		if newTeamKey is ''
			errorText = '''Error, couldnt create team. tabby@teampurr.com'''		
			flow.showOverlayTop(errorOverlayScreen)
			



buttonJoinTeamWithCode.onClick (event, layer) ->
	
	userAction = 'buttonJoinTeamWithCode'
	#now we need to validate the code
	flow.header = navBar
	
	# no text entered
	if !data.teamJoinCode?
		errorText.text = 'Team codes are 6 numbers or letters.'
		flow.showNext(errorOverlayScreen)
		
	else 
		teamCode = data.teamJoinCode
		

		
		joinTeamStep2 = () ->
			# now add to actual user account
			teamAddToUserAccount(joinTeamStep3)
		
		#show the success screen
		joinTeamStep3 = () ->
			updateUserCellView()
			updateUserTeamUI(joinTeamStep4)
			
		
		joinTeamStep4 = () ->
			flow.showNext(teamJoinSuccess)
		
		teamLookupTeamNameByCode(joinTeamStep2) 
		
		#we'll get the team name for later


teamLookupTeamNameByCode = (callback) =>
	#make a call to find the value (team name) of the teamCode 
	theKey = "/teamDirectory/" + teamCode + '/'
	tabbyDB.get theKey, (teamNameReturned) =>
		teamName = teamNameReturned
		if teamName?
			callback(teamName)
			
		# todo check that user is not already on team
		else 
			# team does not exist
			errorText.text = 'Sorry, team not found'
			flow.showNext(errorOverlayScreen)
			

	
teamAddToUserAccount = (callback) ->
	#this adds a team to a user's account
	teamPath = "/users/" + username + "/teams/" + teamCode + "/"
	if teamCode is 'tabby' and userTeams['tabby'] is true
# 		userTeams["Tabby"] = true
		updateUserTeamUI()
		tabbyDB.put(teamPath, true)

	else
		
		userTeams[teamCode] = true
		
		tabbyDB.put(teamPath, true, callback)
		


# Utils.insertCSS("[contenteditable]:focus { outline: 0px solid transparent; }")

teamAddedToUserAccountSuccess = () ->

	# flow for post-create screen
	getTeamSubscriptionsFromCloud()
# 	teamShareCode.html = '''html: "<div contenteditable='true'>''' + teamCode
	
	htmlConstruction = '''<div contenteditable='true'>''' + teamCode
	teamShareCodeFrame.style = { fontFamily: "monospace", weight: "bold", color: "black", padding: "20px"}
	teamShareCodeFrame.html = htmlConstruction
	flow.showNext(teamCreateSuccessScreen)



#todo make this selectable
	buttonToDashboard.visible = true


buttonToDashboard.on Events.Click, (event, layer) ->
	# show success screen
	flow.header.visible = false
	flow.showNext(homeScreen)


showTeamName = () ->
	

# teamNameToCreate = 'test team'


# todo getTeamDirectory
# get an object that contains all the teamcodes + whether they're muted or not


# todo Look up if user is on a particular team
# isUserOnTeam = (username, teamCode)


# todo
# update my team list based on all the teams I'm in.


# todo When a notification comes in, check to see if that user is on one of my teams, if not, do nothing

# todo, when drawing the list of users, only add them to the UI if they're on one of my teams 








writeUserStatusEvent = (username, userEventKey) ->
	if firebaseStatus is 'connected'
		# this writes a key value into /users for the current username and the lastUpdate
		timeNow =  Date.now()
		
		Event = 
			username
		lastUpdatedString = "/allUserEvents/" + timeNow
		userPath = "/users/"+ username
		lastUpdatedKey = userPath + '/lastUpdated'
		tabbyDB.put(lastUpdatedKey, timeNow)
		
		

		
		
		workInertiakey =  userPath + '/workInertia'
		workInertia = Math.max(workInertia, 0)
		tabbyDB.put(workInertiakey, workInertia)
	
writeNewEvent = (username, userEventKey) ->
	# write a new entry for a win, hammer 🔨 or other event
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
		
		dbString = "/allUserEvents/" + timeNow
		
		tabbyDB.put(dbString,Event)
		
		tabbyDB.put('/lastUpdate', timeNow)
		
		userPath = "/users/"+ username
		lastEventKeyPath = userPath + '/lastEvent/eventKey'
		tabbyDB.put(lastEventKeyPath, userEventKey)
		
		lastEventTimePath = userPath + '/lastEvent/eventTime'
		tabbyDB.put(lastEventTimePath, timeNow)
		
		if userEventKey is '▶'
			workSessionEnd = Date.now() + 1500000
			workSessionEndPath = userPath + '/lastEvent/workSessionEnd'
			tabbyDB.put(workSessionEndPath, workSessionEnd)


writeLastUpdatedEvent = (thisTime) ->
	# writes in unixtime the last time the database was updated
	if firebaseStatus is 'connected'
		if not thisTime? then timeNow = Date.now()
		else timeNow = thisTime
		dbString = "/" + timeNow
		tabbyDB.put('/lastUpdate', timeNow)
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

	return Color.mix("#4C545E", colorFromName(theUserName), (inertiaLevel /16), true)
	
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
	return
	#update the users's badge
	# somebug lives here
	if theEvent.eventKey isnt '' #if the event isnt blank
		for theLayer in scroll.content.children
			if eachUserName.lastEvent.eventTime?
				if isFresh(eachUserName.lastEvent.eventTime)
				
					badgeLayer = theLayer.children[1]
					badgeLayer.text = eachUserName.lastEvent.lastEvent
					badgeLayer.opacity = 1
					try fadeOutStateAnimation = new Animation badgeLayer,
						opacity: 0
						options:
							time: 1
					
					Utils.delay 600, -> 
						fadeOutStateAnimation.start()
						#keep it on the screen for 10 minutes before fadeing out
						#idea consider making the times dynaic to the event. For example,
						# 9 minute coffee


				
tabbyDB.onChange "/lastUpdate", (value) -> 
	#onChange doesnt get called if there's no network
	if firebaseStatus isnt 'connected' then return
	if !hasHeardFromServer 
		hasHeardFromServer = true
		serverReady()
		
		
	if ( Date.now() - value) < 5000 
		#Don't do anything on launch, because the onChange gets called on launch. 
		
		if firebaseStatus is 'connected'
			lastUpdateString = '/allUserEvents/' + value
			tabbyDB.get lastUpdateString, (theEvent) ->
				if theEvent?
					myArray = theEvent.username.split " "
					eventNotification =  theEvent.eventString
					
					
					if theEvent.eventKey is '🏆' and theEvent.username isnt username  
						showConfetti()
					
					#now we show the local notifications as well as the Mac one
					if theEvent.username isnt username #don't show the notification if it's me
						showNotificationBanner(eventNotification, theEvent.eventKey)
						
					if theEvent.username isnt username #don't show the notification if it's me
						alertSound = 'bell'
						if theEvent.eventKey is '🏆' then alertSound = 'trophy'
						if theEvent.eventKey is '🔨' then alertSound = 'hammer'
						
						message = eventNotification + ' withAlertSound:' + alertSound
						try CocoaBridge.showMacNotification_(message) #send it to the mac	

					updateUsersBadge(theEvent)

									 


Utils.interval 10, ->
	if firebaseStatus is 'connected' and workInertiaActive
		userListKey = "/users/"
		tabbyDB.get userListKey, (theUsers) ->
			updateUserWorkInertia(theUsers)
			updateUserCellView()
# 			updateUserTeamUI()
			



@writeKeyValuePairToMac = (key, value) ->
	if cocoaBridgeIsUp
		CocoaBridge.writeKeyValuePairToMac(key, value) #send it to the mac
		

# Utils.delay 5, ->
# 	writeKeyValuePairToMac("hello", "world")		

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





Canvas.on "change:size", ->
	forceFlowUpdate()




# Canvas.on "change:size", ->
# 	Utils.delay 0.1, ->
# 		Framer.Device.deviceType = "fullscreen"









# allButtons.visible = false


 
interval = null
startTimer= (durationSeconds, doneFunction, tickFunction) ->
	start = durationSeconds
	interval = Utils.interval 1, ->
		
		tickFunction(start / durationSeconds, start )
		if start <= 0
			stoptimer()
			doneFunction()
		start -= 1
		
stoptimer = ->
	clearInterval(interval)



#############

# window resizes #########


scaleToFill = (target, source) ->
	maxDimension = Math.max(target.height, target.width)
	minDimension = Math.max(source.width, source.height)
	scalar = target.width / target.height
	return target
	

window.onresize = () ->
	updateCanvasDimensions?()

updateCanvasDimensions = () ->
	homeScreen.size = Screen.size
	teamSignOrCreateScreen.size = Screen.size
	workSession.size = Screen.size
	workSessionComplete.size = Screen.size
	screenRechargeSession.size = Screen.size
	buttonTips.y =  Align.top(84)
	buttonTips.x = Align.center(-32)
	allButtons.y = Align.bottom(0)
	scroll.width = homeScreen.width
	scroll.y = Align.bottom
	updateTabbyView?()
	if scrollEmptyStateLabel?
		scrollEmptyStateLabel.midX = homeScreen.midX
		
	updateButtonLayout(myButtonArray, myButtons)
	#update where the buttons are placed
	allButtons.width = Canvas.width
	allButtons.height = 90
	
# 	allButtons.y = Screen.height - allButtons.height
	
	
updateCanvasDimensions?()

colorFromName = (name) ->
	firstLetter = 15* name.charCodeAt(0)
	firstLetter += 15 + (name.length * 2) 
	
	myHue = firstLetter%360
	theColor = new Color
		h: myHue
		l: 0.30
		s: 1
	
	if name is "Chris Raethke" then theColor = "#00AAFF"
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
	for theUserName, theUserData of theObject
		if isFresh(theUserData.lastUpdated)
			theString += theUserName
	return theString


updateUserCellView = (callback) ->
	# here we update all the users in the scrolling view
	if firebaseStatus isnt 'connected' then return
	userListKey = "/users/"
	tabbyDB.get userListKey, (theUsers) ->
		
		# the list of alluser is identical, so no need to redraw
# 		if oldUserString is makeStringFromObject(theUsers)
# 			return
# 		oldUserString = makeStringFromObject(theUsers)
		
		if not isJson(theUsers)
			return
		#some kind of corruption. Bail!
		

		if scroll.content.children.length > 0
			clearScrollView?()
			
		
		numUsers =  Object.keys(theUsers).length
		
		userArrayToDrawCells = []
		
		# now we go through entire userlist, and see whose teams 
		# match the ones we have on
		#this is about as inefficient as it can be!!
		
		
		#todo
		# get the entire user Database
		# get the entire team Database
		#when you have both do a crosscheck for who is in the team.
		# then call to do the actual render
		#bookmark
		tempStatusDictionary = {}
		tempWorkTimerDictionary = {}
		for eachUserName, theUserData of theUsers #all the usernames and their data
			tempStatusDictionary[eachUserName] = ''
			# do some work to prep for badge later on
			
			#thumb
			if theUserData.lastEvent?.eventTime?

				if isFresh(theUserData.lastEvent.eventTime, 120) #make badges stay for 2 minutes
					tempStatusDictionary[eachUserName] = theUserData.lastEvent.eventKey

			workSessionsPercentage = 0
			if theUserData.lastEvent?.workSessionEnd?
				timeDiffInMilliseconds = theUserData.lastEvent.workSessionEnd - Date.now()
				workSessionsPercentage = Math.max(0, ((timeDiffInMilliseconds / 1500000)))
				tempWorkTimerDictionary[eachUserName] = workSessionsPercentage

			if eachUserName isnt username #don't count yourself otherwise false positives
				if isFresh(theUserData.lastUpdated) #has been active recently
	
					
					teamCrosscheckCounter = 0
					if (theUserData.teams)? #if this user has a teams object
						

						for theTeamCode, isActive of userTeams #for all codes that this user has
							if isActive
								for eachTeamCode, subscribed of theUserData.teams
									if subscribed
										if eachTeamCode is theTeamCode #the same team appears
											teamCrosscheckCounter += 1
										#isActive refers to the team being toggled ON in the UI
										
										#the teamCode matches one in the current active team
										# and the user currently has that team active
								
					if teamCrosscheckCounter isnt 0 
						userArrayToDrawCells.push(eachUserName)
							# stupid simple implementation
			#swap so the app user is always first listing always.
		
		
		
		didASwap = false
		for allTheUsers, index in userArrayToDrawCells
			if allTheUsers is username
				[userArrayToDrawCells[index], userArrayToDrawCells[0]] = [userArrayToDrawCells[0], userArrayToDrawCells[index]]
				didASwap = true
		if not didASwap 
		#this means we never found our own name, 
		# which is probably because the database wasn't updated when we first called its user list
			userArrayToDrawCells.unshift(username)
			
		# Variables
		
		
		
		columns = userArrayToDrawCells.length
		gutter = 0
		
		
		if userArrayToDrawCells.length is 0 
			scrollEmptyStateLabel.animate("alone")
		else 
			scrollEmptyStateLabel.animate("connected")
		
		
		# Loop to create row layers
		for index in [0...columns]

			cell = new Layer
				width:  cellWidth
				height: cellHeight
				x: index * (cellWidth + gutter)
				parent: scroll.content
				backgroundColor: "#ffffff"
				clip: false
				
			cellBacking = new Layer
				parent: cell
				backgroundColor: "#ffffff"
				width:  cellWidth
				height: cellHeight
				opacity: 0.55
			
			cell.onClick ->
				userAction = 'cell.onClick'
				userToInspect = @.name
				inspectUser(userToInspect)
				#todo add new view per user.
				
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
			tempUserName = userArrayToDrawCells[index]
			myArray = tempUserName.split " "
			
			userCellName = myArray[0].charAt(0) 
			if myArray[1]
				userCellName += myArray[1].charAt(0)
			
			
			
			userCellName = userArrayToDrawCells[index]
			cell.name = userCellName
			cellLabel = new TextLayer
				parent: cell
				name: userCellName + ' label'
				x: Align.center()
				y: 0
				text:  (userCellName.replace(/\s/g, '\n'))
				textAlign: 'center'
				fontWeight: 600
				fontSize: 9
				letterSpacing: 0.1
				color: 'white'
				padding: 2
			
			#tofix
			try cellBacking.backgroundColor = colorFromInertia(userCellName, (lastUserWorkInertiaLevel[userCellName]))
			if cellBacking.backgroundColor.toHexString() is "#000000" 
				cellBacking.backgroundColor = "#4C545E"
			
			if userArrayToDrawCells[index] is username
				cellLabel.color = '#ffffff'
			
			badgeTextToUse = tempStatusDictionary[userCellName]

			

			cellBadge  = new TextLayer
				parent: cell
				text: badgeTextToUse
				fontSize: 12
				y: Align.bottom(-8)
				x:8 
				opacity: 1
				backgroundColor: 'transparent'
				
			if tempWorkTimerDictionary[userCellName]?
				widthToUse = cell.width *  tempWorkTimerDictionary[userCellName]
				
				workTimerLayer = new Layer
					parent: cell
					y: Align.bottom
					x: 0
					width: widthToUse
					height: 2
					backgroundColor: 'ffff00'
			
			
			# make each cell clickable
			cell.on Events.Click, (event, layer) ->
# 				if layer.name is username
# 					if allButtons.visible is true then allButtons.visible = false else allButtons.visible = true
	
	
	if callback? then callback()
				

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
	
inspectUser = (userToInspect) ->
	




#### Loops


# Motivation Overlay Setup
motivationOverlay = new Layer
	parent: homeScreen
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
	padding: 10
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
		tabbyDB.get "/latestAppVersion", (theEvent) ->
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
			tabbyDB.get userListKey, (theUsers) ->
				updateUserWorkInertia(theUsers)


serverReady = () ->
	try updateUserCellView()
	checkAppVersion?()
	
isFresh = (someTime, optionalSeconds) ->
	if !optionalSeconds?
		optionalSeconds = 30
	
	theMilliseconds = 1000 * optionalSeconds
	# if the time handed over is more than 30s old
	if (Date.now() - someTime ) > theMilliseconds
		return false
	else 
		return true

Utils.interval 86400, ->
	serverReady?()
	
tabbyDB.onChange "/users", (status) ->
	#updateUserCellView?()
	
	
	
	
	
	
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
if sandbox and !demoMode
	sandBoxNote = new TextLayer
		text: 'SANDBOX'
		fontSize: 9
		fontWeight: 800
		color: 'red'
		padding: 2
		opacity: 0.2
		x: Align.right()







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
		@r = ~~Utils.randomNumber(2,4)
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
		c.draw() for c in confetti
# this makes an array full of constructed confetti from above


# this kicks off an animation loop to make the confetti move
# theres a way to replace this with the framer loop that would
# probably make it a bit more performant but i cant
# remember how

window.step = ->
	if !shouldStop 
		requestAnimationFrame(step)
		context.clearRect(0,0,w,h)


# this starts the first loop
Utils.delay .1, -> 
	step()
	

	
confettiStart = () ->
	if !haveConfetti then return
	confetti = (new Confetti for i in [1..NUM_CONFETTI])
	confettiLayer.visible = true
	shouldStop = false
	step()
	
confettiStop = () ->
	shouldStop = true
	confettiLayer.visible = false
		

	


configTeam = () ->
	#todo if user has no teams, then create a /teamMemberships and in it add 
	# /tabby which has property of /active = true and /description which is 'A public channel for all '



#  Input thing
# Made by Taylor Palmer from uxtools.co
# Need help? Contact me at taylor@uxtools.co

# Using Benjamin's input module: 
# https://github.com/benjamindenboer/FramerInput



# Original Form Data

# Object where we store the data
data =
	teamJoinCode: ""
	teamCreateName: ''


# Function used to display data on screen using the "results" textLayer
displayFormData = () ->
	results.text = JSON.stringify(data)
	
# Fire it on load
displayFormData()



# Text Input

# placeholderText1.text = ""
input1 = InputLayer.wrap(input1JoinCode, placeholderText1)

# When the user types...
input1.onValueChange ->
	# Store the data in the Object
	data.teamJoinCode = input1.value
	# And display it on the screen.



input1.onInputFocus ->
	input1.color = "transparent"
		





buttonSuccessDone.onClick ->
	drawTeamToggleView()
	flow.showNext(homeScreen)

buttonHammering.onClick ->
	writeNewEvent(username, '🔨')


buttonRecharge.onClick ->
	name = '🔋'
	motivationOverlay.backgroundColor = myButtonColor[name]
	writeNewEvent(username, name)
	buttonFramesReset()
	
	
	rechargeSuggestion.text = Utils.randomChoice(['A short nap can be really refreshing.','Feel more professional with some pants on.','Stretching is a great way to relieve tension.', 'Give your eyes a break from the screen', 'A minute of deep breathing centers the mind.', 'A short walk or roll can get your blood flowing again.', 'As our favorite watch says, time to stand up!', 'Personally, I do push-ups.', 'Go talk to Chris Raethke.',
	'Tell someone you love them.', 'Feel something furry, squishy or scratchy'
	])
	flow.showNext(screenRechargeSession)
	flow.header.visible = true
allButtons.visible = false #experimental


forceFlowUpdate()

button_group.bringToFront()

Screen.backgroundColor = '#606A77'

#first launch
