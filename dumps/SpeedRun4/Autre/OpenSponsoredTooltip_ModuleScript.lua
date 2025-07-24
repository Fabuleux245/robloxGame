-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:15
-- Luau version 6, Types version 3
-- Time taken: 0.001251 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local RobloxAppEnums = require(Parent.RobloxAppEnums)
local getDeviceType_upvr = require(Parent.AppCommonLib).getDeviceType
local DeviceType_upvr = RobloxAppEnums.DeviceType
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = RobloxAppEnums.AppPage
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local CentralOverlayType_upvr = RobloxAppEnums.CentralOverlayType
return function() -- Line 12
	--[[ Upvalues[6]:
		[1]: getDeviceType_upvr (readonly)
		[2]: DeviceType_upvr (readonly)
		[3]: NavigateDown_upvr (readonly)
		[4]: AppPage_upvr (readonly)
		[5]: SetCentralOverlay_upvr (readonly)
		[6]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1) -- Line 13
		--[[ Upvalues[6]:
			[1]: getDeviceType_upvr (copied, readonly)
			[2]: DeviceType_upvr (copied, readonly)
			[3]: NavigateDown_upvr (copied, readonly)
			[4]: AppPage_upvr (copied, readonly)
			[5]: SetCentralOverlay_upvr (copied, readonly)
			[6]: CentralOverlayType_upvr (copied, readonly)
		]]
		local var4_result1 = getDeviceType_upvr(arg1:getState().DeviceOrientation)
		local var12 = true
		if var4_result1 ~= DeviceType_upvr.Phone then
			if var4_result1 ~= DeviceType_upvr.Tablet then
				var12 = false
			else
				var12 = true
			end
		end
		if var12 then
			arg1:dispatch(NavigateDown_upvr({
				name = AppPage_upvr.SponsoredTooltipPeekView;
			}))
		else
			arg1:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.SponsoredTooltip))
		end
	end
end