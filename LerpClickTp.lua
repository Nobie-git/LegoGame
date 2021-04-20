local PLR=game.Players.LocalPlayer
local CHR=PLR.Character
local HRP=CHR.HumanoidRootPart
local MSE=PLR:GetMouse()
local UIS=game:GetService("UserInputService")
local PSP=Instance.new("Part",workspace);PSP.CanCollide=false;PSP.Transparency=1;PSP.Anchored=true
local UserInputService = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input)
    if input.KeyCode==Enum.KeyCode.Q then
        PSP.CFrame=CFrame.new(MSE.hit.Position+Vector3.new(0,3,0))
        for i=0,1,.1 do
        HRP.CFrame=HRP.CFrame:Lerp(PSP.CFrame,i);wait()
		PSP:Destroy()
        end
    end
end)
