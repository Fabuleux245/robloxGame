-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:33
-- Luau version 6, Types version 3
-- Time taken: 0.000710 seconds

local Parent = script:FindFirstAncestor("SettingReactView").Parent
local React_upvr = require(Parent.React)
local Toggle_upvr = require(Parent.Foundation).Toggle
return function(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Toggle_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg1.onChanged:get())
	arg1.onChanged:connect(function(arg1_2) -- Line 18
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_2)
	end)
	return React_upvr.createElement(Toggle_upvr, {
		label = "";
		isDisabled = false;
		isChecked = any_useState_result1_upvr;
		onActivated = React_upvr.useCallback(function() -- Line 21
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useState_result1_upvr (readonly)
			]]
			arg1.onChanged:set(not any_useState_result1_upvr)
		end, {any_useState_result1_upvr});
	})
end