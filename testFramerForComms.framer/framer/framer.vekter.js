(function(scope) {var myView = new Layer({"height":256,"name":"myView","constraintValues":null,"backgroundColor":"#606A77","clip":true,"width":256});var banner = new Layer({"parent":myView,"name":"banner","backgroundColor":"#FFFF00","width":256,"height":40,"constraintValues":{"height":40,"centerAnchorX":0.5,"width":256,"right":0,"top":-40,"centerAnchorY":-0.078125},"blending":"normal","clip":false,"borderStyle":"solid","y":-40});var winInvert = new Layer({"parent":banner,"name":"winInvert","backgroundColor":null,"width":32,"x":4,"height":32,"constraintValues":{"left":4,"aspectRatioLocked":true,"height":32,"centerAnchorX":0.078125,"width":32,"bottom":4,"top":4,"centerAnchorY":0.5},"blending":"normal","image":"images\/design\/f9xsY3LIsbTNcIhpvh3WfHdzdhO47lPTQDg7hFCYbdf7Xlbke6xP8Exj6v5kek0l9CxIuRCVsjSsCvg.svg","clip":false,"borderStyle":"solid","y":4});var winnerName = new TextLayer({"parent":banner,"name":"winnerName","backgroundColor":null,"width":141,"x":52,"styledText":{"blocks":[{"inlineStyles":[{"startIndex":0,"endIndex":22,"css":{"fontSize":"13px","WebkitTextFillColor":"rgb(0, 0, 0)","whiteSpace":"pre","fontWeight":600,"letterSpacing":"0px","tabSize":4,"fontFamily":"\"SFUIText-Semibold\", \"SF UI Text\", sans-serif","lineHeight":"1.2"}}],"text":"Keith Lang is winning!"}],"alignment":"left"},"height":15,"constraintValues":{"left":null,"height":15,"centerAnchorX":0.478515625,"width":141,"top":null,"centerAnchorY":0.51249999999999996},"blending":"normal","autoSize":true,"y":13});var hammerInvert = new Layer({"parent":banner,"name":"hammerInvert","backgroundColor":null,"width":32,"x":4,"height":32,"constraintValues":{"left":4,"aspectRatioLocked":true,"height":32,"centerAnchorX":0.078125,"width":32,"bottom":4,"top":4,"centerAnchorY":0.5},"blending":"normal","image":"images\/design\/gl0KJPxrCPQdULcjMwHBPneB9uD6gJRf9MxLAseiBIwQAyVAs0a9qH4olLJuzzQE0HnXcCHMIGX5XDKCxYgA.svg","clip":false,"borderStyle":"solid","y":4});hammerInvert.__framerInstanceInfo = {"originalFilename":"hammerinvert.svg","framerClass":"Layer","hash":"#vekter|hammerInvert","targetName":"hammerInvert","vekterClass":"ImageNode"};myView.__framerInstanceInfo = {"framerClass":"Layer","hash":"#vekter|myView","targetName":"myView","vekterClass":"FrameNode"};banner.__framerInstanceInfo = {"framerClass":"Layer","hash":"#vekter|banner","targetName":"banner","vekterClass":"RectangleNode"};winInvert.__framerInstanceInfo = {"originalFilename":"winInvert.svg","framerClass":"Layer","hash":"#vekter|winInvert","targetName":"winInvert","vekterClass":"ImageNode"};winnerName.__framerInstanceInfo = {"framerClass":"TextLayer","hash":"#vekter|winnerName","targetName":"winnerName","vekterClass":"TextNode","text":"Keith Lang is winning!"};if (scope["__vekterVariables"]) { scope["__vekterVariables"].map(function(variable) { delete scope[variable] } ) };Object.assign(scope, {myView, banner, winInvert, winnerName, hammerInvert});scope["__vekterVariables"] = ["myView", "banner", "winInvert", "winnerName", "hammerInvert"];if (typeof Framer.CurrentContext.layout === 'function') {Framer.CurrentContext.layout()};})(window);