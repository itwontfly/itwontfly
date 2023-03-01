local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CFrames = require(script.Parent.Parent.Lists.CFrames)
local Weapons = require(script.Parent.Parent.Lists.Weapons)

local RNG = Random.new()

local Chest = {}
Chest.__index = Chest

function Chest.new()
    local self = {}

    self.Chest = ReplicatedStorage.Assets.Chest:Clone()
      
    setmetatable(self, Chest)

    self:Init()

    return self
end

function Chest:Init()
    self.Chest.Parent = workspace
end

function Chest:ChangePlace()
    self.Chest.CFrame = CFrames[RNG:NextInteger(1, #CFrames)]
end

-- might want to call before map voting
function Chest:Destroy()
    
end

return Chest
