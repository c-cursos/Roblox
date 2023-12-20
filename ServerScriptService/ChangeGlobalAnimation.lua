
--https://create.roblox.com/docs/pt-br/tutorials/building/animation/scripting-avatar-animations
--Ninja Run       656118852
--Werewolf Run    1083216690
--Zombie Run      616163682
--testAnimation   15675438564

local Players = game:GetService( "Players" );
--Gets the Players service, giving you access to players that join the game.

--Animations
local rbx = "rbxassetid://" --"rbxassetid://15675438564"

local NinjaRun = rbx.."656118852"
local WerewolfRun = rbx.."1083216690"
local ZombieRun = rbx.."616163682"
local testAnimation = rbx.."15675438564"

local runAnimation = WerewolfRun
--Sets the ID of the animation to be used. 
--For the ID, use the one made in Creating Animations, 
--or find one from the card below.

function onCharacterAdded( character )
	local humanoid = character:WaitForChild( "Humanoid" );
	local animateScript = character:WaitForChild( "Animate" );

	animateScript.run.RunAnim.AnimationId = runAnimation
	-- animateScript.climb.ClimbAnim.AnimationId = 
	-- animateScript.sit.SitAnim.AnimationId = 
	-- animateScript.fall.FallAnim.AnimationId = 
	-- animateScript.swim.AnimationId = 
	-- animateScript.idle.Animation1.AnimationId = 
	-- animateScript.walk.WalkAnim.AnimationId = 
end

function onPlayerAdded( player )
	player.CharacterAppearanceLoaded:Connect( onCharacterAdded )
end

Players.PlayerAdded:Connect( onPlayerAdded )