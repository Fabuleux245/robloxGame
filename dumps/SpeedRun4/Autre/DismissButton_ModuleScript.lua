-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:58
-- Luau version 6, Types version 3
-- Time taken: 0.001208 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local Foundation_upvr = require(Songbird.Parent.Foundation)
local tbl_upvr = {
	size = require(Songbird.constants).ICON_SIZE;
	icon = "icons/navigation/close";
	iconSize = Foundation_upvr.Enums.IconSize.Medium;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local React_upvr = require(Songbird.Parent.React)
return function(arg1) -- Line 25, Named "DismissButton"
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Foundation_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local module = {
		icon = any_join_result1.icon;
		layoutOrder = any_join_result1.layoutOrder;
	}
	local iconSize = any_join_result1.iconSize
	module.size = iconSize
	if any_join_result1.onDismiss then
		iconSize = any_join_result1.onDismiss
	else
		iconSize = function() -- Line 32
		end
	end
	module.onActivated = iconSize
	module.ZIndex = 1
	return React_upvr.createElement(Foundation_upvr.IconButton, module)
end