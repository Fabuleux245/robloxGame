-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:15
-- Luau version 6, Types version 3
-- Time taken: 0.000518 seconds

local Parent = script:FindFirstAncestor("GamePlayButton").Parent
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
return function(arg1, arg2) -- Line 7, Named "openFiatPurchasePage"
	--[[ Upvalues[2]:
		[1]: AppPage_upvr (readonly)
		[2]: NavigateDown_upvr (readonly)
	]]
	return function(arg1_2) -- Line 8
		--[[ Upvalues[4]:
			[1]: AppPage_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: NavigateDown_upvr (copied, readonly)
		]]
		local tbl = {
			name = AppPage_upvr.GenericWebPage;
		}
		tbl.detail = arg1
		local tbl_2 = {
			titleKey = "Feature.PaidAccessPurchases.Webview.Title.Checkout";
		}
		tbl_2.onClose = arg2
		tbl.extraProps = tbl_2
		arg1_2:dispatch(NavigateDown_upvr(tbl))
	end
end