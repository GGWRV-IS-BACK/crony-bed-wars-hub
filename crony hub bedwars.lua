local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "BED WARS HUB", HidePremium = false,IntroText = "CRONY X", SaveConfig = true, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Crony",
	Content = "hi",
	Image = "https://r",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
local Tab = Window:MakeTab({
	Name = "scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "VAPE V4(TOP 1)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()

	
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "lonewarrior(aimbot,sprint...)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "lonewarrior(Keybinds, Spam, ESP)",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/g1CG7iCi'))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "legit tp (press P)",
	Callback = function()
		local Key = "P"--//Put your key here

local Connection
local PositionSaved

game:GetService("UserInputService").InputBegan:Connect(function(Data,a)
	if Data.KeyCode == Enum.KeyCode[tostring(Key)] and not a then
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
		PositionSaved = game:GetService("Players").LocalPlayer:GetMouse().Hit.Position+Vector3.new(0,2,0)
		Connection = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(Char)
			repeat game:GetService("RunService").RenderStepped:Wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			for i =1,10 do
				game:GetService("RunService").Stepped:Wait()
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(PositionSaved)
			end
			Connection:Disconnect()
		end)
	end
end)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
