-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:50
-- Luau version 6, Types version 3
-- Time taken: 0.001196 seconds

local Constants_upvr = require(script:FindFirstAncestor("FriendsLanding").Common.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature(Constants_upvr.TOOLTIP_GAME_ENGINE_FEATURE)
return {
	getKey = function(arg1) -- Line 7, Named "getKey"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
			return true
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 12
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			return arg1:GetItem(Constants_upvr.TOOLTIP_APP_STORAGE_KEY)
		end)
		local var7
		if pcall_result1 then
			if pcall_result2 ~= "true" then
				var7 = false
			else
				var7 = true
			end
			return var7
		end
		return false
	end;
	updateKey = function(arg1, arg2) -- Line 23, Named "updateKey"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
		else
			pcall(function() -- Line 28
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: Constants_upvr (copied, readonly)
					[3]: arg2 (readonly)
				]]
				arg1:SetItem(Constants_upvr.TOOLTIP_APP_STORAGE_KEY, tostring(arg2))
				arg1:Flush()
			end)
		end
	end;
}