spawn(function()
	while energy == true and task.wait() do
		if game:GetService("Players").GoldenGuyWasTaken.PlayerGui.EnergyBar.EnergyBar.EnergyBar:FindFirstChild("Template") then
			game:GetService("Players").GoldenGuyWasTaken.PlayerGui.EnergyBar.EnergyBar.EnergyBar:FindFirstChild("Template"):Destroy()
		else
				return ""
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
end
end)
