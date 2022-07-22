
--// Akemo Client \\--

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Akemo Client", game.Name, Color3.fromRGB(255, 110, 48), Enum.KeyCode.RightShift)
local TOS = win:Tab("TOS", "http://www.roblox.com/asset/?id=6023426915")
local Privacy = win:Tab("Privacy", "http://www.roblox.com/asset/?id=6023426915")
local World = win:Tab("World", "http://www.roblox.com/asset/?id=6023426915")
local Client = win:Tab("Client", "http://www.roblox.com/asset/?id=6023426915")
local Info = win:Tab("Info", "http://www.roblox.com/asset/?id=6023426915")

--// TOS \\--

TOS:Label("Akemo Client is not responsable if you get banned!")
TOS:Label("Akemo is not entitled to give you any excuse for getting banned on games.")
TOS:Label("Akemo is not responsable if you get scammed.")
TOS:Label("-Some Features might not work in some games!")

--// Privacy \\--

Privacy:Button("Streamer Mode", "This will scramble players names within the player list", function()
    for _,v in pairs(game:GetService("Players")) do
        if v ~= game:GetService("Players").LocalPlayer then
            v.Name = "Henry"..tostring(math.random(111111, 999999))
        end
    end
end)

--// World \\--

World:Slider("Change Brightness", "Changes the brightness of the screen", 0, 2, game:GetService("Lighting").Brightness, function(x)
    game:GetService("Lighting").Brightness = x
end)

World:Button("Remove Textures", "Removes all textures", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Material = Enum.Material.Plastic
        end
    end
end)

World:Button("Remove Others Clothes and Hats", "Removes all features of other players", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Accessory") then
            v:Destroy()
        elseif v:IsA("Clothing") then
            v:Destroy()
        end
    end
end)

--// Client \\--

Client:Button("Anti-AFK", "This will automatically do inputs for you!", function()
    local VirtualUser = game:GetService('VirtualUser')
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

--// Infomation \\--

Info:Label("Made by Kasma#1625")
Info:Label("v0.1.0")
Info:Label("Right Shift to close UI")
Info:Label("Discord Coming soon!")
