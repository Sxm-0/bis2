_G.Energy = false

local function InfHealth()
    while _G.Energy do
        local template = game.Players.GoldenGuyWasTaken.PlayerGui.EnergyBar.EnergyBar.EnergyBar:FindFirstChild("Template")
        
        if template then
            template:Destroy()
        end
        if game:GetService("Players").GoldenGuyWasTaken.PlayerGui.EnergyBar.EnergyBar.EnergyBar.ImageLabel.Frame.Size ~= UDim2.new(1, 0, 1, 0) then
            local args = {
                [1] = "Apple"
            }

            game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
            local args = {
                [1] = 15,
                [2] = "Apple"
            }

            game:GetService("ReplicatedStorage").Events.Energy:FireServer(unpack(args))
        end
        task.wait()
    end
end
