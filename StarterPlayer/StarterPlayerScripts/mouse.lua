

local 
	Players = game.Players;
	LocalPlayer = Players.LocalPlayer;
	PlayerMouse = LocalPlayer:GetMouse();


--while( wait() ) do
--	print( PlayerMouse.Target )
--end

function FireBtnEvent( BtnType ) 
	if( BtnType == "1d" )  then
		print( PlayerMouse.Target )
	elseif( BtnType == "1u" ) then
		print( PlayerMouse.Target )
	elseif( BtnType == "2d" )  then
		print( PlayerMouse.Target )
	elseif( BtnType == "2u" )  then
		print( PlayerMouse.Target )			
	end
end

function HitEvent()
	print( PlayerMouse.Hit )
end

PlayerMouse.Button1Down:Connect(
	function() 
		if( PlayerMouse.Target.Parent == game.Workspace.Destoyables ) then
			PlayerMouse.Target:Destroy()
		end
	end
)

PlayerMouse.Button1Up:Connect(
	function() 
		FireBtnEvent( "1u" )
	end
)

PlayerMouse.Button2Down:Connect(
	function() 
		FireBtnEvent( "2d" )
		print( "---------------" )
		HitEvent()
	end
)

PlayerMouse.Button2Up:Connect(
	function() 
		FireBtnEvent( "2d" )
	end
)

