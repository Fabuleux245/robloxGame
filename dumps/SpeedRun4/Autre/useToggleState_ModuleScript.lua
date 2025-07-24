-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:07
-- Luau version 6, Types version 3
-- Time taken: 0.001225 seconds

local ReactUtils = script:FindFirstAncestor("ReactUtils")
local React_upvr = require(ReactUtils.Parent.React)
local var3_upvr = require(ReactUtils.Flags.getFFlagUseToggleStateImprovements)()
return function(arg1) -- Line 10, Named "useToggleState"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: var3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1 or false)
	local var8
	if var3_upvr then
		var8 = React_upvr.useCallback(function() -- Line 29
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(function(arg1_2) -- Line 30
				return not arg1_2
			end)
		end, {})
	end
	local module = {
		enabled = any_useState_result1;
		enable = React_upvr.useCallback(function() -- Line 19
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(true)
		end, {});
		disable = React_upvr.useCallback(function() -- Line 23
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(false)
		end, {});
	}
	if var3_upvr then
	else
	end
	module.toggle = nil
	if var3_upvr then
	else
	end
	module.set = nil
	return module
end