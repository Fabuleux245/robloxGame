-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:44
-- Luau version 6, Types version 3
-- Time taken: 0.003681 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = {
	previousWalkSpeed = nil;
	gameIsR6R15 = function() -- Line 6, Named "gameIsR6R15"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		local Character_2 = LocalPlayer_upvr.Character
		if not Character_2 then
			return false
		end
		local Humanoid = Character_2:FindFirstChild("Humanoid")
		if not Humanoid or Humanoid and not Humanoid.RigType then
			return false
		end
		return true
	end;
	enablePlayerMovement = function() -- Line 22, Named "enablePlayerMovement"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		require(LocalPlayer_upvr.PlayerScripts.PlayerModule):GetControls():Enable()
	end;
	disablePlayerMovement = function() -- Line 27, Named "disablePlayerMovement"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		require(LocalPlayer_upvr.PlayerScripts.PlayerModule):GetControls():Disable()
	end;
}
function module_upvr.enablePlayerMovementControlGuiVisible() -- Line 32
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if not module_upvr.gameIsR6R15() then
	else
		local Character = LocalPlayer_upvr.Character
		if not Character then return end
		Character:WaitForChild("Humanoid").WalkSpeed = module_upvr.previousWalkSpeed or 16
	end
end
function module_upvr.disablePlayerMovementControlGuiVisible(arg1) -- Line 47
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if not module_upvr.gameIsR6R15() then
	else
		local Character_3 = LocalPlayer_upvr.Character
		if not Character_3 then return end
		local Humanoid_2 = Character_3:WaitForChild("Humanoid")
		module_upvr.previousWalkSpeed = Humanoid_2.WalkSpeed
		Humanoid_2.WalkSpeed = arg1 or 0
	end
end
function module_upvr.watchForMovement(arg1) -- Line 63
	local var8_upvw = true
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local any_GetControls_result1_upvr = require(game.Players.LocalPlayer.PlayerScripts.PlayerModule):GetControls()
	local var11_upvw = false
	local var12_upvw
	task.spawn(function() -- Line 73, Named "watch"
		--[[ Upvalues[6]:
			[1]: var8_upvw (read and write)
			[2]: any_GetControls_result1_upvr (readonly)
			[3]: var11_upvw (read and write)
			[4]: var12_upvw (read and write)
			[5]: arg1 (readonly)
			[6]: BindableEvent_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
		local var14
		-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 32 start (CF ANALYSIS FAILED)
		if any_GetControls_result1_upvr:GetMoveVector().Magnitude == 0 then
			var14 = false
		else
			var14 = true
		end
		var11_upvw = var14
		var14 = var11_upvw
		-- KONSTANTERROR: [2] 3. Error Block 32 end (CF ANALYSIS FAILED)
	end)
	BindableEvent_upvr.Event:Connect(function(arg1_2, arg2) -- Line 99
		--[[ Upvalues[1]:
			[1]: var8_upvw (read and write)
		]]
		if arg1_2 == "StopWatching" then
			var8_upvw = false
		end
	end)
	return BindableEvent_upvr
end
return module_upvr