-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:20
-- Luau version 6, Types version 3
-- Time taken: 0.001543 seconds

local Parent = script:FindFirstAncestor("CancelSubscriptionApp").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	heading = "CoreScripts.CancelUserSubscriptionPrompt.SuccessPrompt.Heading";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local Toast_upvr = UIBlox.App.Dialog.Toast
local icons_logo_block_upvr = UIBlox.App.ImageSet.Images["icons/logo/block"]
return function(arg1) -- Line 17, Named "CancelUserSubscriptionSuccessPrompt"
	--[[ Upvalues[5]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Toast_upvr (readonly)
		[5]: icons_logo_block_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		toastTitle = useLocalization_upvr(tbl_upvr).heading;
		iconImage = icons_logo_block_upvr;
	}
	local function onAppeared() -- Line 23
	end
	tbl.onAppeared = onAppeared
	onAppeared = arg1.onDismissed
	local var11 = onAppeared
	if not var11 then
		function var11() -- Line 24
		end
	end
	tbl.onDismissed = var11
	tbl.swipeUpDismiss = true
	module.toastContent = tbl
	module.anchorPoint = Vector2.new(0.5, 0)
	module.duration = 3
	module.layoutOrder = 1
	module.position = UDim2.new(0.5, 0, 0, 20)
	module.size = UDim2.new(0.5, -24, 0, 0)
	module.show = true
	return React_upvr.createElement(Toast_upvr, module)
end