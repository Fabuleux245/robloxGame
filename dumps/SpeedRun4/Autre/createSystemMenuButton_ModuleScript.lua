-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:09
-- Luau version 6, Types version 3
-- Time taken: 0.000695 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local Roact_upvr = require(Parent.Roact)
local TextButton_upvr = require(Parent.UIBlox).App.Button.TextButton
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: TextButton_upvr (readonly)
	]]
	local localizedStrings_upvr = arg1.localizedStrings
	local isDisabled_upvr = arg1.isDisabled
	ArgCheck_upvr.isNotNil(localizedStrings_upvr, "props.localizedStrings")
	local module = {
		text = localizedStrings_upvr.systemButtonText;
		isDisabled = isDisabled_upvr;
	}
	local onActivated_2_upvr = arg1.onActivated
	function module.onActivated() -- Line 20
		--[[ Upvalues[3]:
			[1]: isDisabled_upvr (readonly)
			[2]: onActivated_2_upvr (readonly)
			[3]: localizedStrings_upvr (readonly)
		]]
		if isDisabled_upvr then
		elseif onActivated_2_upvr then
			onActivated_2_upvr(localizedStrings_upvr)
		end
	end
	return Roact_upvr.createElement(TextButton_upvr, module)
end