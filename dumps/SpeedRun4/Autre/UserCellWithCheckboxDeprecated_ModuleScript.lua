-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:19
-- Luau version 6, Types version 3
-- Time taken: 0.000592 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Roact_upvr = require(AppChat.Parent.Roact)
local UserCell_upvr = require(AppChat.Components.Cells.UserCell)
local Checkbox_upvr = require(script.Parent.Checkbox)
return function(arg1) -- Line 12
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: UserCell_upvr (readonly)
		[3]: Checkbox_upvr (readonly)
	]]
	return Roact_upvr.createElement(UserCell_upvr, {
		style = arg1.style;
		user = arg1.user;
		subTitleText = arg1.subTitleText;
		secondaryTitleText = arg1.secondaryTitleText;
		isCheckboxActivated = arg1.isCheckboxActivated;
		onActivated = arg1.onActivated;
		childWidth = 64;
	}, {
		checkbox = Roact_upvr.createElement(Checkbox_upvr, {
			activated = arg1.isCheckboxActivated;
		});
	})
end