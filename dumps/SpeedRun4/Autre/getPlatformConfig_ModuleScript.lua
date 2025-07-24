-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:07
-- Luau version 6, Types version 3
-- Time taken: 0.001182 seconds

local DeviceType_upvr = require(script:FindFirstAncestor("AppBlox").Parent.RobloxAppEnums).DeviceType
local module_upvr = {
	[DeviceType_upvr.Desktop] = {
		startingOffsetPosition = 500;
		thumbnailHeight = 200;
		dualPanelBreakpoint = 1280;
		headerBarBackgroundHeight = 80;
		sideMargin = 48;
	};
	[DeviceType_upvr.Tablet] = {
		startingOffsetPosition = 200;
		thumbnailHeight = 150;
		dualPanelBreakpoint = math.huge;
		headerBarBackgroundHeight = 80;
		sideMargin = 48;
	};
	[DeviceType_upvr.Phone] = {
		startingOffsetPosition = 250;
		thumbnailHeight = 100;
		dualPanelBreakpoint = math.huge;
		headerBarBackgroundHeight = 24;
		sideMargin = 24;
	};
	[DeviceType_upvr.Console] = {
		startingOffsetPosition = 500;
		thumbnailHeight = 200;
		dualPanelBreakpoint = 1280;
		headerBarBackgroundHeight = 80;
		sideMargin = 48;
	};
	[DeviceType_upvr.VR] = {
		startingOffsetPosition = 500;
		thumbnailHeight = 200;
		dualPanelBreakpoint = 1280;
		headerBarBackgroundHeight = 80;
		sideMargin = 48;
	};
}
return function(arg1) -- Line 60, Named "getPlatformConfig"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: DeviceType_upvr (readonly)
	]]
	local var8 = module_upvr[arg1]
	if var8 == nil then
		return module_upvr[DeviceType_upvr.Desktop]
	end
	return var8
end