-- =============================================================
-- Copyright Roaming Gamer, LLC. 2009-2014 
-- =============================================================
-- Short and Sweet License: 
-- 1. You may use anything you find in this file to create your own games and apps.
-- 2. You may not sell or distribute this file by itself, as part of a code pack, or book, or ... well, you get the idea.
-- 3. Really.  I mean it.  Please only use this to make games and apps.  
-- 4. Oh, yes.  Credits are awesome.  If you want to credit me (Ed Maurina) or my company (Roaming Gamer, LLC.) in
--    your game, that is awesome.
-- =============================================================
_G.SPC = ' '
_G.NL  = '\n'
_G.TAB = '\t'

_G.w = display.contentWidth
_G.h = display.contentHeight

_G.centerX = display.contentCenterX -- w/2
_G.centerY = display.contentCenterY -- h/2

_G.scaleX = 1/display.contentScaleX
_G.scaleY = 1/display.contentScaleY

_G.displayWidth        = display.actualContentWidth -- (display.contentWidth - display.screenOriginX*2)
_G.displayHeight       = display.actualContentHeight -- (display.contentHeight - display.screenOriginY*2)

_G.unusedWidth    = _G.displayWidth - _G.w
_G.unusedHeight   = _G.displayHeight - _G.h

_G.deviceWidth  = math.floor((displayWidth/display.contentScaleX) + 0.5)
_G.deviceHeight = math.floor((displayHeight/display.contentScaleY) + 0.5)

_G.luaVersion = _G._VERSION
_G.onSimulator = system.getInfo( "environment" ) == "simulator"
_G.platformVersion = system.getInfo( "platformVersion" ) or 0
_G.olderVersion = tonumber(string.sub( platformVersion, 1, 1 )) < 4

_G.oniOS = ( system.getInfo("platformName") == "iPhone OS") 
_G.onAndroid = ( system.getInfo("platformName") == "Android") 
_G.onOSX = ( system.getInfo("platformName") == "Mac OS X")
_G.onWin = ( system.getInfo("platformName") == "Win")


-- easy color codes and string translations
_G.colorNames = {}
_G.allColors = {}
_G._TRANSPARENT_ = {0, 0, 0, 0}; _G.colorNames[_TRANSPARENT_] = "TRANSPARENT"

_G._WHITE_ = {1, 1, 1, 1}; _G.colorNames[_WHITE_] = "WHITE";_G.allColors[#_G.allColors+1] = _G._WHITE_
_G._BLACK_ = {  0,   0,   0, 1}; _G.colorNames[_BLACK_] = "BLACK";_G.allColors[#_G.allColors+1] = _G._BLACK_

_G._GREY_      = {0.5, 0.5, 0.5, 1}; _G.colorNames[_GREY_] = "GREY";_G.allColors[#_G.allColors+1] = _G._GREY_
_G._DARKGREY_  = { 0.25,  0.25,  0.25, 1}; _G.colorNames[_DARKGREY_] = "DARKGREY";_G.allColors[#_G.allColors+1] = _G._DARKGREY_
_G._DARKERGREY_  = { 0.125,  0.125,  0.125, 1}; _G.colorNames[_DARKERGREY_] = "DARKERGREY";_G.allColors[#_G.allColors+1] = _G._DARKERGREY_
_G._LIGHTGREY_ = {0.753, 0.753, 0.753, 1}; _G.colorNames[_LIGHTGREY_] = "LIGHTGREY";_G.allColors[#_G.allColors+1] = _G._LIGHTGREY_

_G._RED_   = {1, 0, 0, 1}; _G.colorNames[_RED_] = "RED";_G.allColors[#_G.allColors+1] = _G._RED_
_G._GREEN_ = {0, 1, 0, 1}; _G.colorNames[_GREEN_] = "GREEN";_G.allColors[#_G.allColors+1] = _G._GREEN_
_G._BLUE_  = {0, 0, 1, 1}; _G.colorNames[_BLUE_] = "BLUE";_G.allColors[#_G.allColors+1] = _G._BLUE_
_G._CYAN_  = {0, 1, 1, 1}; _G.colorNames[_CYAN_] = "CYAN";_G.allColors[#_G.allColors+1] = _G._CYAN_

_G._YELLOW_       = {1, 1, 0, 1}; _G.colorNames[_YELLOW_] = "YELLOW";_G.allColors[#_G.allColors+1] = _G._YELLOW_
_G._ORANGE_       = {1, 0.398, 0, 1}; _G.colorNames[_ORANGE_] = "ORANGE";_G.allColors[#_G.allColors+1] = _G._ORANGE_
_G._BRIGHTORANGE_ = {1, 0.598, 0, 1}; _G.colorNames[_BRIGHTORANGE_] = "BRIGHTORANGE";_G.allColors[#_G.allColors+1] = _G._BRIGHTORANGE_
_G._PURPLE_       = {0.625, 0.125, 0.938, 1}; _G.colorNames[_PURPLE_] = "PURPLE";_G.allColors[#_G.allColors+1] = _G._PURPLE_
_G._PINK_         = {1, 0.430, 0.777, 1}; _G.colorNames[_PINK_] = "PINK";_G.allColors[#_G.allColors+1] = _G._PINK_

