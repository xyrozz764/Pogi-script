‎local player = game.Players.LocalPlayer
‎
‎local success, OrionLib = pcall(function()
‎    return loadstring(game:HttpGet("https://raw.githubusercontent.com/xyrozz764/Pogi-script/main/AutoPuch/source.lua"))()
‎end)
‎
‎if not success then
‎    warn("Failed to load OrionLib:", OrionLib)
‎    pcall(function()
‎        game.StarterGui:SetCore("SendNotification", {
‎            Title = "Pogi Hub",
‎            Text = "Failed to load main library.",
‎            Duration = 5
‎        })
‎    end)
‎    return -- Stop script dahil walang OrionLib
‎end
‎
‎local Window = OrionLib:MakeWindow({
‎    Name = "pogis hub",
‎    HidePremium = false,
‎    SaveConfig = true,
‎    ConfigFolder = "OrionTest"
‎})
‎
‎local Tab = Window:MakeTab({
‎    Name = "nyek",
‎    Icon = "rbxassetid://4483345998",
‎    PremiumOnly = false
‎})
‎
‎local Section = Tab:AddSection({
‎    Name = "LocalPlayer"
‎})
‎
‎OrionLib:MakeNotification({
‎    Name = "SHABU",
‎    Content = "miss mo",
‎    Image = "rbxassetid://4483345998",
‎    Time = 5
‎})
‎
‎local noclip = false
‎local rs = game:GetService("RunService")
‎
‎Tab:AddToggle({
‎    Name = "Noclip",
‎    Default = false,
‎    Callback = function(state)
‎        noclip = state
‎    end
‎})
‎
‎rs.Stepped:Connect(function()
‎    if noclip then
‎        for _, part in pairs(player.Character:GetDescendants()) do
‎            if part:IsA("BasePart") and part.CanCollide == true then
‎                part.CanCollide = false
‎            end
‎        end
‎    end
‎end)
‎
‎if game.PlaceId == 3623096087 then
‎    local success2, err = pcall(function()
‎        loadstring(game:HttpGet("https://raw.githubusercontent.com/xyrozz764/Pogi-script/main/AutoPuch/source.lua"))()
‎    end)
‎    if not success2 then
‎        warn("Failed to load game script:", err)
‎        pcall(function()
‎            game.StarterGui:SetCore("SendNotification", {
‎                Title = "Pogi Hub",
‎                Text = "Failed to load game script.",
‎                Duration = 5
‎            })
‎        end)
‎    end
‎else
‎    warn("Pogi Hub: Unsupported game.")
‎    pcall(function()
‎        game.StarterGui:SetCore("SendNotification", {
‎            Title = "Pogi Hub",
‎            Text = "Game not supported.",
‎            Duration = 5
‎        })
‎    end)
‎end
