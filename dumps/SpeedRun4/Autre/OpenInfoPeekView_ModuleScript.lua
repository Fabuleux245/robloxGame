-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:19
-- Luau version 6, Types version 3
-- Time taken: 0.000669 seconds

local Parent = script:FindFirstAncestor("DiscoveryRouting").Parent
local RobloxAppEnums = require(Parent.RobloxAppEnums)
local getDeviceType_upvr = require(Parent.AppCommonLib).getDeviceType
local DeviceType_upvr = RobloxAppEnums.DeviceType
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = RobloxAppEnums.AppPage
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[4]:
		[1]: getDeviceType_upvr (readonly)
		[2]: DeviceType_upvr (readonly)
		[3]: NavigateDown_upvr (readonly)
		[4]: AppPage_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[6]:
			[1]: getDeviceType_upvr (copied, readonly)
			[2]: DeviceType_upvr (copied, readonly)
			[3]: NavigateDown_upvr (copied, readonly)
			[4]: AppPage_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: arg2 (readonly)
		]]
		local getDeviceType_upvr_result1 = getDeviceType_upvr(arg1_2:getState().DeviceOrientation)
		if getDeviceType_upvr_result1 ~= DeviceType_upvr.Phone and getDeviceType_upvr_result1 ~= DeviceType_upvr.Tablet then
		else
			local tbl_2 = {
				name = AppPage_upvr.InfoPeekView;
			}
			local tbl = {}
			tbl.title = arg1
			tbl.body = arg2
			tbl_2.extraProps = tbl
			arg1_2:dispatch(NavigateDown_upvr(tbl_2))
		end
	end
end