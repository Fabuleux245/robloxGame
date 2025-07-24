-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:35
-- Luau version 6, Types version 3
-- Time taken: 0.001840 seconds

local Parent = script:FindFirstAncestor("Navigation").Parent
local getRootNavigation_upvr = require(script.Parent.getRootNavigation)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppCanGoBackMutedError", false)
local mutedError_upvr = require(Parent.Loggers).mutedError
local Actions_upvr = require(Parent.RoactNavigation).Actions
return function(arg1) -- Line 16, Named "canGoBack"
	--[[ Upvalues[4]:
		[1]: getRootNavigation_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: mutedError_upvr (readonly)
		[4]: Actions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2_result1 = getRootNavigation_upvr(arg1)
	local state_2 = var2_result1.state
	local var13
	if var13 then
		var13 = var2_result1.router
		local var14
		if var13 == nil then
			var13 = mutedError_upvr
			if state_2 ~= nil then
				var14 = state_2.routeName or "<missing name>"
			else
				var14 = "<missing state>"
			end
			if arg1.state ~= nil then
			else
			end
			var13(`Missing router for: {var14} for child route: {"<missing state>"}`)
		end
	end
	if state_2 == var2_result1.router.getStateForAction(Actions_upvr.back({
		key = false;
	}), state_2) then
		var13 = false
	else
		var13 = true
	end
	return var13
end