-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:19
-- Luau version 6, Types version 3
-- Time taken: 0.001090 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local UserCell_upvr = require(AppChat.Components.Cells.UserCell)
local View_upvr = Foundation.View
local Checkbox_upvr = Foundation.Checkbox
local InputSize_upvr = Foundation.Enums.InputSize
return React_upvr.memo(function(arg1) -- Line 22
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: UserCell_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: Checkbox_upvr (readonly)
		[6]: InputSize_upvr (readonly)
	]]
	return React_upvr.createElement(UserCell_upvr, {
		style = arg1.style;
		user = arg1.user;
		subTitleText = arg1.subTitleText;
		secondaryTitleText = arg1.secondaryTitleText;
		onActivated = arg1.onActivated;
		childWidth = useTokens_upvr().Size.Size_1600;
	}, {
		checkboxContainer = React_upvr.createElement(View_upvr, {
			tag = "size-full row flex-around";
		}, {
			checkbox = React_upvr.createElement(Checkbox_upvr, {
				label = "";
				isChecked = arg1.isCheckboxActivated;
				size = InputSize_upvr.XSmall;
				onActivated = React_upvr.useCallback(function() -- Line 24
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					if arg1.onActivated then
						arg1.onActivated(arg1.user)
					end
				end, {arg1.onActivated, arg1.user});
			});
		});
	})
end)