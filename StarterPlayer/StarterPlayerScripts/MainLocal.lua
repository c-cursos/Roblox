

local ReplicatedStorage = game.ReplicatedStorage

local UserInputService = game:GetService("UserInputService")

local REMOTE_EVENT_ChangeColor = ReplicatedStorage.RemoteEvents.ChangeColor
local REMOTE_EVENT_ChangeConfirm = ReplicatedStorage.RemoteEvents.ChangeConfirm

UserInputService.InputBegan:Connect(
	
	function(input)
		
		if input.UserInputType == Enum.UserInputType.Keyboard then
			
			if input.KeyCode == Enum.KeyCode.E then
				
				REMOTE_EVENT_ChangeColor:FireServer()
				
			end
			
		end
		
	end
	
)

REMOTE_EVENT_ChangeConfirm.OnClientEvent:Connect(
	
	function(NewColor)
		
		print(NewColor.Name)
		
	end
)