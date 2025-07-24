-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:05
-- Luau version 6, Types version 3
-- Time taken: 0.004062 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local usePrevious_upvr = require(Parent.RoactUtils).Hooks.usePrevious
local React_upvr = require(Parent.React)
local ArgCheck_upvr = require(Parent.ArgCheck)
return function(arg1) -- Line 13, Named "WaitForPropWrapper"
	--[[ Upvalues[3]:
		[1]: usePrevious_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	local waitForProp_upvr_2 = arg1.waitForProp
	local maxUpdatesToDelay_upvr_2 = arg1.maxUpdatesToDelay
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(maxUpdatesToDelay_upvr_2)
	local var19_upvr
	if usePrevious_upvr(waitForProp_upvr_2) ~= nil then
		var19_upvr = false
		if waitForProp_upvr_2 == nil then
			var19_upvr = false
			if maxUpdatesToDelay_upvr_2 ~= nil then
				if any_useState_result1_upvr_2 >= maxUpdatesToDelay_upvr_2 then
					var19_upvr = false
				else
					var19_upvr = true
				end
			end
		end
	end
	local var20
	var20 = React_upvr.useEffect
	var20(function() -- Line 25
		--[[ Upvalues[5]:
			[1]: maxUpdatesToDelay_upvr_2 (readonly)
			[2]: waitForProp_upvr_2 (readonly)
			[3]: var19_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: any_useState_result1_upvr_2 (readonly)
		]]
		if not maxUpdatesToDelay_upvr_2 then
		else
			if waitForProp_upvr_2 ~= nil then return end
			if var19_upvr then
				task.delay(0, function() -- Line 36
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr_2 (copied, readonly)
						[2]: maxUpdatesToDelay_upvr_2 (copied, readonly)
					]]
					any_useState_result2_upvr_2(maxUpdatesToDelay_upvr_2)
				end)
				return
			end
			if any_useState_result1_upvr_2 and 0 < any_useState_result1_upvr_2 then
				task.delay(0, function() -- Line 41
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr_2 (copied, readonly)
						[2]: any_useState_result1_upvr_2 (copied, readonly)
					]]
					any_useState_result2_upvr_2(any_useState_result1_upvr_2 - 1)
				end)
			end
		end
	end, {waitForProp_upvr_2, maxUpdatesToDelay_upvr_2, any_useState_result1_upvr_2, var19_upvr})
	var20 = true
	if waitForProp_upvr_2 == nil and maxUpdatesToDelay_upvr_2 ~= nil then
		if var19_upvr then
			var20 = false
		elseif any_useState_result1_upvr_2 and 0 < any_useState_result1_upvr_2 then
			var20 = false
		else
			ArgCheck_upvr.assert(waitForProp_upvr_2, `Missing data for prop for this game collection, after waiting {maxUpdatesToDelay_upvr_2} updates`)
		end
	end
	if var20 then
		return arg1.wrappedComponent
	end
	return nil
end