-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:34
-- Luau version 6, Types version 3
-- Time taken: 0.000689 seconds

local Parent = script:FindFirstAncestor("SocialContextToasts").Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local DeeplinkConfirmationModal_upvr = require(Parent.NotificationsCommon).DeeplinkConfirmationModal
return function() -- Line 10, Named "ConfirmationModalRoot"
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: DeeplinkConfirmationModal_upvr (readonly)
	]]
	local function var5(arg1) -- Line 11
		return arg1.ConfirmationModal
	end
	local var2_result1 = useSelector_upvr(var5)
	var5 = var2_result1
	local var7 = var5
	if var7 then
		var7 = var2_result1.isOpen
	end
	local module = {}
	local var9 = var7
	if var9 then
		var9 = React_upvr.createElement
		var9 = var9(DeeplinkConfirmationModal_upvr, {
			closeCallback = var2_result1.closeCallback;
		})
	end
	module.DeeplinkConfirmationModal = var9
	return module
end