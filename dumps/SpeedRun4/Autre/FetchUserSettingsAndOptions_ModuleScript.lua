-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:20
-- Luau version 6, Types version 3
-- Time taken: 0.000610 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local GetUserSettingsAndOptions_upvr = require(GameDetailRodux.GameDetails.GetUserSettingsAndOptions)
local Promise_upvr = require(GameDetailRodux.Parent.Promise)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: GetUserSettingsAndOptions_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return GetUserSettingsAndOptions_upvr(arg1):andThen(function(arg1_2) -- Line 8
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		local responseBody = arg1_2.responseBody
		if not responseBody then
			Promise_upvr.reject("Unexpected response when fetching user settings and options")
		end
		return Promise_upvr.resolve(responseBody)
	end, function(arg1_3) -- Line 16
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(arg1_3)
	end)
end