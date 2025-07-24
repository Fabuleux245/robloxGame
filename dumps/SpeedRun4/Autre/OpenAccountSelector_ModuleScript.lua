-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:06
-- Luau version 6, Types version 3
-- Time taken: 0.000942 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[4]:
		[1]: NavigateDown_upvr (readonly)
		[2]: AppPage_upvr (readonly)
		[3]: SetCentralOverlay_upvr (readonly)
		[4]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: NavigateDown_upvr (copied, readonly)
			[3]: AppPage_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: SetCentralOverlay_upvr (copied, readonly)
			[6]: CentralOverlayType_upvr (copied, readonly)
		]]
		if arg2 then
			local tbl = {
				name = AppPage_upvr.AccountSelectorPeekView;
			}
			tbl.extraProps = arg1
			arg1_2:dispatch(NavigateDown_upvr(tbl))
		else
			arg1_2:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.AccountSelector, arg1))
		end
	end
end