local PLR=game.Players.LocalPlayer
local CHR=PLR.Character
local HRP=CHR:WaitForChild("HumanoidRootPart")
local MSE=PLR:GetMouse()
local UIS=game:GetService("UserInputService")

UIS.InputBegan:Connect(function(INP)
	if INP.KeyCode==Enum.KeyCode.E then
		if MSE.target.Anchored == false and HRP then
			MSE.target.CFrame=CFrame.new(HRP.Position+Vector3.new(0,10,0))
			else
			print("Part Name: "..MSE.target.Name)
		end
	end
end)
game["Run Service"].RenderStepped:connect(function()
   settings().Physics.AllowSleep = false
   setsimulationradius(math.huge*math.huge,math.huge*math.huge)
end)
