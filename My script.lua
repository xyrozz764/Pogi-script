‎local player = game.Players.LocalPlayer
‎
‎local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/xyrozz764/Orion/main/source.lua"))()
‎
‎local Window = OrionLib:MakeWindow({
‎    Name = "pogis hub",
‎    HidePremium = false,
‎    SaveConfig = true,
‎    ConfigFolder = "OrionTest"
‎})
‎
‎local Tab = Window:MakeTab({
‎    Name = "Tab 1",
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
‎    Content = "Notification content... what will it say??",
‎    Image = "rbxassetid://4483345998",
‎    Time = 5
‎})
‎
‎-- WalkSpeed Button
‎Tab:AddButton({
‎    Name = "Set Walkspeed to 27",
‎    Callback = function()
‎        if player.Character and player.Character:FindFirstChild("Humanoid") then
‎            player.Character.Humanoid.WalkSpeed = 27
‎        end
‎    end    
‎})
‎
‎-- JumpPower Button
‎Tab:AddButton({
‎    Name = "Set JumpPower to 50",
‎    Callback = function()
‎        if player.Character and player.Character:FindFirstChild("Humanoid") then
‎            player.Character.Humanoid.JumpPower = 50
‎        end
‎    end    
‎})
‎
