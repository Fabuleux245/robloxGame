-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:22
-- Luau version 6, Types version 3
-- Time taken: 0.001157 seconds

local CorePackages = game:GetService("CorePackages")
local DeviceType_upvr = require(CorePackages.Workspace.Packages.RobloxAppEnums).DeviceType
local React_upvr = require(CorePackages.Packages.React)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = require(CorePackages.Workspace.Packages.FocusNavigationUtils).FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = require(CorePackages.Workspace.Packages.FocusNavigationUtils).FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = require(CorePackages.Workspace.Packages.FocusNavigationUtils).FocusNavigableSurfaceIdentifierEnum
function OverscanWrapper(arg1) -- Line 20
	--[[ Upvalues[7]:
		[1]: DeviceType_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CoreScriptsRootProvider_upvr (readonly)
		[4]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[5]: FocusRoot_upvr (readonly)
		[6]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[7]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	return function(arg1_2) -- Line 21
		--[[ Upvalues[8]:
			[1]: DeviceType_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: CoreScriptsRootProvider_upvr (copied, readonly)
			[4]: FFlagCSFocusWrapperRefactor_upvr (copied, readonly)
			[5]: FocusRoot_upvr (copied, readonly)
			[6]: FocusNavigationCoreScriptsWrapper_upvr (copied, readonly)
			[7]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
			[8]: arg1 (readonly)
		]]
		local module = {}
		local var13 = React_upvr
		if FFlagCSFocusWrapperRefactor_upvr then
			var13 = FocusRoot_upvr
		else
			var13 = FocusNavigationCoreScriptsWrapper_upvr
		end
		if FFlagCSFocusWrapperRefactor_upvr then
			local tbl = {
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
				isIsolated = true;
				isAutoFocusRoot = true;
			}
		else
		end
		module.FocusNavigationCoreScriptsWrapper = var13.createElement(var13, {
			selectionGroupName = "OverscanScreen";
			focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
		}, {
			Overscan = React_upvr.createElement(arg1, arg1_2);
		})
		return React_upvr.createElement(CoreScriptsRootProvider_upvr, {
			styleOverride = {
				deviceType = DeviceType_upvr.Console;
			};
		}, module)
	end
end
return OverscanWrapper