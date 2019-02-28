display.setDefault( "background", 0/255, 178/255, 255/255 )

local myText = display.newText( "Circle Calculator", 160, -20, native.systemFont, 30 )
myText:setFillColor( 255/255, 255/255, 255/255 )

local DiameterOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 50)
DiameterOfCircleTextField.id = "length textField"

local AreaOfCircleTextField = display.newText( "Area Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
AreaOfCircleTextField.id = "area textField"
AreaOfCircleTextField:setFillColor( 1, 1, 1 )

local CircumferenceOfCircleTextField = display.newText( "Circumference Answer", display.contentCenterX, display.contentCenterY -150, native.systemFont, 20 )
CircumferenceOfCircleTextField.id = "circumference textField"
CircumferenceOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "Assets/circle.png", 200, 200 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterOfCircle
    local areaOfCircle
    local CircumferenceOfACircle
    
    diameterOfCircle = DiameterOfCircleTextField.text
    areaOfCircle = (math.pi*(diameterOfCircle/2)*(diameterOfCircle/2))
    AreaOfCircleTextField.text = "The area is " .. areaOfCircle

    diameterOfCircle = DiameterOfCircleTextField.text
    CircumferenceOfACircle = math.pi*diameterOfCircle
    CircumferenceOfCircleTextField.text = "The circ. is " .. CircumferenceOfACircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )