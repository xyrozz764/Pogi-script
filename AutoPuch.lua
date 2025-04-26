local player = game.Players.LocalPlayer
‎
‎local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xyrozz764/Pogi-script/main/AutoPuch/source.lua"))()
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

    -- Pogi Hub Game Loader
if game.PlaceId == 3623096087 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyrozz764/Pogi-script/main/AutoPuch/source.lua"))()
else
    warn("Pogi Hub: Unsupported game.")
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Pogi Hub",
            Text = "Game not supported.",
            Duration = 3
        })
    end)
    end
