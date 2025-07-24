-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:11
-- Luau version 6, Types version 3
-- Time taken: 0.002164 seconds

local UiShellEvents = script:FindFirstAncestor("UiShellEvents")
local Parent = UiShellEvents.Parent
local tbl_2_upvr = {
	[Enum.ScreenOrientation.LandscapeLeft] = "LandscapeLeft";
	[Enum.ScreenOrientation.LandscapeRight] = "LandscapeRight";
	[Enum.ScreenOrientation.LandscapeSensor] = "LandscapeSensor";
	[Enum.ScreenOrientation.Portrait] = "Portrait";
	[Enum.ScreenOrientation.Sensor] = "Sensor";
}
local function _(arg1) -- Line 22, Named "round"
	return math.floor(arg1 or 0.5)
end
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useCurrentCamera_upvr = require(Parent.RobloxAppHooks).useCurrentCamera
local useDeviceOrientation_upvr = require(Parent.RobloxAppHooks).useDeviceOrientation
local getCurrentRouteState_upvr = require(Parent.Navigation).getCurrentRouteState
local React_upvr = require(Parent.React)
local orientationChangedEvent_upvr = require(UiShellEvents.Analytics.orientationChangedEvent)
return function(arg1, arg2, arg3) -- Line 26, Named "useLogOrientationChanged"
	--[[ Upvalues[7]:
		[1]: useNavigation_upvr (readonly)
		[2]: useCurrentCamera_upvr (readonly)
		[3]: useDeviceOrientation_upvr (readonly)
		[4]: getCurrentRouteState_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: orientationChangedEvent_upvr (readonly)
	]]
	local var6_result1_upvr = useDeviceOrientation_upvr()
	local var11
	if not var11 then
		var11 = {}
	end
	local var12_upvr = arg3
	if not var12_upvr then
		var12_upvr = var11.name
	end
	local var13_upvr = tbl_2_upvr[arg2]
	local useCurrentCamera_upvr_result1_upvr = useCurrentCamera_upvr()
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = var6_result1_upvr
	tbl[3] = var13_upvr
	React_upvr.useEffect(function() -- Line 39
		--[[ Upvalues[6]:
			[1]: var6_result1_upvr (readonly)
			[2]: var13_upvr (readonly)
			[3]: orientationChangedEvent_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: var12_upvr (readonly)
			[6]: useCurrentCamera_upvr_result1_upvr (readonly)
		]]
		local tostring_result1 = tostring(game.GameId)
		local var17
		if tostring_result1 == '0' then
			var17 = "app"
		else
			var17 = "experience"
		end
		if var6_result1_upvr or var13_upvr then
			orientationChangedEvent_upvr(arg1, var17, {
				deviceOrientation = var6_result1_upvr;
				experienceOrientation = var13_upvr;
				page = var12_upvr;
				viewportX = math.floor(useCurrentCamera_upvr_result1_upvr.ViewportSize.X or 0.5);
				viewportY = math.floor(useCurrentCamera_upvr_result1_upvr.ViewportSize.Y or 0.5);
				universeId = tostring_result1;
			})
		end
	end, tbl)
end