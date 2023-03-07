local b = Instance.new("BindableFunction")
function b.OnInvoke(response) if response == "Copy Link" then if setclipboard then setclipboard("Coming Soon") end end end
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Join discord server", Text = "This is mi new discord server :D", Duration = 5, Callback = b, Button1 = "Copy Link"})

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()

local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = true, ConfigFolder = "TurtleFi"})

local T1 = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "Message Bot",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T3 = Window:MakeTab({
Name = "Misc",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T4 = Window:MakeTab({
Name = "About & Credit",
Icon = "rbxassetid://",
PremiumOnly = false
})

T3:AddButton({
Name = "ControlTP",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/rS2DBx4Y", true))()
end
})

T3:AddButton({
Name = "Give all tools",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ngVWmQ8m", true))()
end
})

T1:AddDropdown({
Name = "Teleport type",
Default = "None",
Options = {"Teleport", "Tweening"},
Callback = function(Value)
      FunctionType = Value
  end    
})

T1:AddButton({
Name = "Teleport",
Callback = function()
    if FunctionType == "Teleport" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.tower.sections.finish.exit.ParticleBrick.CFrame
end
    if FunctionType == "Tweening" then
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 


{CFrame = CFrame.new(game.workspace.tower.sections.finish.exit.ParticleBrick.CFrame)}):Play()
end
end
})

T1:AddButton({
Name = "GodMode",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MSZAznxp", true))()
end
})

T3:AddButton({
Name = "Infinite Jump",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/WUquqYN0", true))()
end
})
 
T3:AddButton({
Name = "Disable Anti-Cheat",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BMGbkQ71", true))()
end
})

T3:AddButton({
Name = "Noclip (B)",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Czgaerid", true))()
end
})

T3:AddButton({
Name = "Send bot message",
Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sqkeaRjG", true))()
end
})

-- Game Functions --
if getconnections then
    for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
      v:Disable()
    end
  end
