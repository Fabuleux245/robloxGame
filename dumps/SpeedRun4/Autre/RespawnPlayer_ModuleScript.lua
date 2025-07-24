-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:36
-- Luau version 6, Types version 3
-- Time taken: 0.001927 seconds

local Parent = script.Parent.Parent
local Players_upvr = game:GetService("Players")
local SetRespawning_upvr = require(Parent.Actions.SetRespawning)
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
return function(arg1) -- Line 11
	--[[ Upvalues[5]:
		[1]: Players_upvr (readonly)
		[2]: SetRespawning_upvr (readonly)
		[3]: CloseMenu_upvr (readonly)
		[4]: SendAnalytics_upvr (readonly)
		[5]: Constants_upvr (readonly)
	]]
	local any_getState_result1_2 = arg1:getState()
	if any_getState_result1_2.respawn.enabled then
		if any_getState_result1_2.respawn.customCallback then
			any_getState_result1_2.respawn.customCallback:Fire()
		else
			local Character = Players_upvr.LocalPlayer.Character
			if Character ~= nil then
				local Humanoid = Character:FindFirstChild("Humanoid")
				if Humanoid ~= nil and Humanoid:IsA("Humanoid") then
					Humanoid.Health = 0
				end
			end
		end
	end
	arg1:dispatch(SetRespawning_upvr(false))
	arg1:dispatch(CloseMenu_upvr)
	SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsRespawnCharacterName, {
		confirmed = Constants_upvr.AnalyticsConfirmedName;
	})
end