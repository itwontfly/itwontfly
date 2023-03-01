local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Positions = require(script.Parent.Positions)

local RNG = Random.new()

local Chest = {}
Chest.__index = Behaviour

function Chest.new()
    local self = {}

    self.Chest = ReplicatedStorage.Assets.Chest:Clone()
      
    setmetatable(self, Behaviour)

    self:Init()

    return self
end

function Chest:Init()
    self:ChangePlace()
end

function Chest:ChangePlace()
    self.Chest.CFrame = Positions[RNG:NextInteger(1, #Positions)]
end

-- might want to call before map voting
function Chest:Destroy()
    self.Chest:Destroy()
end

return Chest
