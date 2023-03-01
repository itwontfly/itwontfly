--[[
    The box gives a randomly selected weapon and display it for whoever bought a chance of spin.
    The displayed weapon will disappear after seconds if the player don't take it, so to give an opportunity for other players to spin.
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local BoxBehaviour = require(script.BoxBehaviour).new()

local function Spin()
    local choice = ""
    
    if choice ~= "Joker" then
        
    else
        BoxBehaviour:ChangePlace()
    end
end
