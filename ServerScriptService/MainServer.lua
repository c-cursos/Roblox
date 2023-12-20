

local ReplicatedStorage = game.ReplicatedStorage

local REMOTE_EVENT_ChangeColor = ReplicatedStorage.RemoteEvents.ChangeColor
local REMOTE_EVENT_ChangeConfirm = ReplicatedStorage.RemoteEvents.ChangeConfirm

local ColorPart = game.Workspace.Parts.ColorPart

REMOTE_EVENT_ChangeColor.OnServerEvent:Connect(
	
	function(Player)
		
		print( Player.Name )
		
		ColorPart.BrickColor = BrickColor.Random()
		
		REMOTE_EVENT_ChangeConfirm:FireClient(Player, ColorPart.BrickColor)
		task.wait( 3 )
		print( "Oi" )
		
	end
	
)

