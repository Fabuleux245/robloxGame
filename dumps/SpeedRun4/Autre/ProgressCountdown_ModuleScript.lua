-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:01
-- Luau version 6, Types version 3
-- Time taken: 0.001470 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local tbl_upvr = {
	counterType = "Remaining";
}
local function secondsToHHM_upvr(arg1) -- Line 24, Named "secondsToHHM"
	local floored = math.floor(arg1 / 3600)
	local floored_2 = math.floor(arg1 % 3600 / 60)
	local var6 = arg1 % 60
	if 0 < floored then
		return string.format("%i:%02i:%02i", floored, floored_2, var6)
	end
	return string.format("%i:%02i", floored_2, var6)
end
local Cryo_upvr = require(Songbird.Parent.Cryo)
local useCallback_upvr = React_upvr.useCallback
local Foundation_upvr = require(Songbird.Parent.Foundation)
return function(arg1) -- Line 36, Named "ProgressCountdown"
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: secondsToHHM_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Foundation_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local module = {}
	local tbl = {}
	local var15 = true
	tbl["auto-xy text-caption-body content-muted"] = var15
	if any_join_result1_upvr.counterType ~= "Remaining" then
		var15 = false
	else
		var15 = true
	end
	tbl["align-x-right"] = var15
	module.tag = tbl
	module.Text = any_join_result1_upvr.timePosition:map(useCallback_upvr(function(arg1_2) -- Line 39
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: secondsToHHM_upvr (copied, readonly)
		]]
		if any_join_result1_upvr.counterType == "Remaining" then
			return '-'..secondsToHHM_upvr(math.floor(any_join_result1_upvr.timeLength - arg1_2))
		end
		return secondsToHHM_upvr(math.ceil(arg1_2))
	end, {any_join_result1_upvr.timeLength}))
	module.LayoutOrder = any_join_result1_upvr.LayoutOrder
	return React_upvr.createElement(Foundation_upvr.Text, module)
end