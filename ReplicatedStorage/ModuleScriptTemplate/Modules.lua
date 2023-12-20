

local mod = {}

if( game:GetService( "RunService" ):IsClient() ) then
	print( "Running on cliente" )
elseif( game:GetService( "RunService" ):IsServer() ) then
	print( "Running on server" )
end

-- template --------------------
local RunService = game:GetService( "RunService" )


-- ChangePartColor -------------------
function mod.ChangePartColor( BasePart, NewColor )
	
	if( BasePart:IsA( "BasePart" ) and RunService:IsServer() ) then
		BasePart.Color = NewColor
	end
end
-- ----------------------------------

return mod