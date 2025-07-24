-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:27
-- Luau version 6, Types version 3
-- Time taken: 0.003107 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ToastScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local FFlagAppChatEnableTC_upvr = require(Parent.SharedFlags).FFlagAppChatEnableTC
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.Constant.IconSize
function any_extend_result1.init(arg1) -- Line 19
	--[[ Upvalues[3]:
		[1]: FFlagAppChatEnableTC_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: IconSize_upvr (readonly)
	]]
	arg1.hasToastChanged = false
	function arg1.getToastProps(arg1_2) -- Line 22
		--[[ Upvalues[4]:
			[1]: FFlagAppChatEnableTC_upvr (copied, readonly)
			[2]: Images_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local toastContent_upvr = arg1_2.toastContent
		local module = {}
		local tbl = {
			toastTitle = toastContent_upvr.toastTitle;
			toastSubtitle = toastContent_upvr.toastSubtitle;
			iconColorStyle = toastContent_upvr.iconColorStyle;
		}
		local var13
		if FFlagAppChatEnableTC_upvr and arg1_2.shouldHideIcon then
			var13 = nil
		else
			var13 = toastContent_upvr.iconImage
			if not var13 then
				var13 = Images_upvr["icons/status/alert"]
			end
		end
		tbl.iconImage = var13
		var13 = toastContent_upvr.iconSize
		if not var13 then
			var13 = Vector2.new(IconSize_upvr.Regular, IconSize_upvr.Regular)
		end
		tbl.iconSize = var13
		tbl.swipeUpDismiss = toastContent_upvr.swipeUpDismiss
		function tbl.onAppeared() -- Line 35
			--[[ Upvalues[2]:
				[1]: toastContent_upvr (readonly)
				[2]: arg1 (copied, readonly)
			]]
			if toastContent_upvr.onAppeared then
				toastContent_upvr.onAppeared()
			end
			arg1.hasToastChanged = false
		end
		tbl.onActivated = toastContent_upvr.onActivated
		function tbl.onDismissed() -- Line 42
			--[[ Upvalues[2]:
				[1]: toastContent_upvr (readonly)
				[2]: arg1 (copied, readonly)
			]]
			if toastContent_upvr.onDismissed then
				toastContent_upvr.onDismissed()
			end
			if not arg1.hasToastChanged then
				arg1.props.navigation.goBack()
			end
		end
		module.toastContent = tbl
		module.anchorPoint = arg1_2.anchorPoint
		module.duration = arg1_2.duration or 2
		module.layoutOrder = arg1_2.layoutOrder
		module.position = arg1_2.position
		module.size = arg1_2.size
		module.show = arg1_2.show
		return module
	end
end
local Toast_upvr = UIBlox.App.Dialog.Toast
function any_extend_result1.render(arg1) -- Line 63
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Toast_upvr (readonly)
	]]
	local var15
	if type(arg1.props.navigation) == "nil" then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "ToastScreen should be wrapped with Roact Navigation")
	var15 = arg1.props.navigation.getParam("toastProps", {})
	var15 = Roact_upvr.createElement(Toast_upvr, arg1.getToastProps(var15))
	return var15
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 71
	arg1.hasToastChanged = true
end
local Logger_upvr = require(script.Parent.Logger)
function any_extend_result1.didMount(arg1) -- Line 75
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return any_extend_result1