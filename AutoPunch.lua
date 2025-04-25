local player = game.Players.LocalPlayer
‎
‎local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xyrozz764/Pogi-script/main/READMEmd.lua"))()
‎
‎local Window = OrionLib:MakeWindow({
‎    Name = "pogis hub",
‎    HidePremium = false,
‎    SaveConfig = true,
‎    ConfigFolder = "OrionTest"
‎})
‎
‎local Tab = Window:MakeTab({
‎    Name = "nyek",
‎    Icon = "rbxassetid://4483345998",
‎    PremiumOnly = false
‎})
‎
‎local Section = Tab:AddSection({
‎    Name = "LocalPlayer"
‎})
‎
‎OrionLib:MakeNotification({
‎    Name = "SHABU",
‎    Content = miss mo
‎    Image = "rbxassetid://4483345998",
‎    Time = 5
