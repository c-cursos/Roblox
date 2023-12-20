

--local RedPart = game.Workspace.Parts.RedPart
--local BLuePart = game.Workspace.Parts.BluePart
--local YellowPart = game.Workspace.Parts.YellowPart
--local TweenService = game:GetService( "TweenService" )
--local BluePartInitialPosition = BLuePart.Position
--local RedPartInitialPosition = RedPart.Position

local 
	RedPart = game.Workspace.Parts.RedPart;
	BLuePart = game.Workspace.Parts.BluePart;
	YellowPart = game.Workspace.Parts.YellowPart;
	TweenService = game:GetService( "TweenService" );
	BluePartInitialPosition = BLuePart.Position;
	RedPartInitialPosition = RedPart.Position;


function plays( funcao, args, time )
	task.wait( time )
	funcao( args )
end

local TweenPosition = TweenService:Create(
	BLuePart, 
	TweenInfo.new( 3 ), 
	{ Position = RedPartInitialPosition }
)

task.wait( 5 )
TweenPosition:Play()


function PartTurnTweenPosition( Part, Info, NewPos )
	local TweenPosition = TweenService:Create(
		Part, 
		TweenInfo.new( Info ), 
		{ Position = NewPos }
	)

	task.wait( 5 )
	TweenPosition:Play()
end


function PartTurnTweenCFrame( Part, Info, PartCFrame, animation)
	local TweenCFrame = TweenService:Create(
		Part, 
		TweenInfo.new( Info, animation ), 
		{ CFrame = PartCFrame.CFrame },
		animation
	)

	task.wait( 5 )
	TweenCFrame:Play()
end


task.wait( 5 )
PartTurnTweenPosition( 
	BLuePart, 
	3, 
	BluePartInitialPosition
)

task.wait( 1 )
PartTurnTweenCFrame( 
	BLuePart, 
	3, 
	YellowPart,
	Enum.EasingStyle.Quad
)

task.wait( 1 )
PartTurnTweenCFrame(
	RedPart,
	3,
	YellowPart,
	Enum.EasingStyle.Bounce
)

