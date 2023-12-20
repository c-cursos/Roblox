

local 
	Players = game.Players;
	LocalPlayer = game.Players.LocalPlayer;
	Character = game.Players.LocalPlayer.Character;
	Humanoid = game.Players.LocalPlayer.Character:WaitForChild( "Humanoid" );
	Animation = script.Animation;
	AnimationTrack = Humanoid:LoadAnimation( Animation )

AnimationTrack:play()


--  put the animation inside this file