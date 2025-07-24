-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:31
-- Luau version 6, Types version 3
-- Time taken: 0.002255 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local var4_upvw
local var5_upvw
if game:GetEngineFeature("VRMoreComfortSettings") then
	var4_upvw = require(script.Parent.VRComfortAutoToggleEntry)
	var5_upvw = require(script.Parent.ComfortSettingsEntry)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("VRComfortSettingsPage")
any_extend_result1.validateProps = t.strictInterface({
	closeMenu = t.callback;
	pageTitle = t.string;
})
local function _() -- Line 26, Named "createLayoutOrderGenerator"
	local var9_upvw = 0
	return function() -- Line 28
		--[[ Upvalues[1]:
			[1]: var9_upvw (read and write)
		]]
		var9_upvw += 1
		return var9_upvw
	end
end
local withStyle_upvr = InGameMenuDependencies.UIBlox.Core.Style.withStyle
local Page_upvr = require(script.Parent.Parent.Page)
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Page_upvr (readonly)
		[4]: var5_upvw (read and write)
		[5]: var4_upvw (read and write)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 35
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Page_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var5_upvw (copied, read and write)
			[5]: var4_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local var14_upvw = 0
		local function var13() -- Line 28
			--[[ Upvalues[1]:
				[1]: var14_upvw (read and write)
			]]
			var14_upvw += 1
			return var14_upvw
		end
		local tbl_2 = {
			pageTitle = arg1.props.pageTitle;
			zIndex = 2;
			position = arg1.props.position;
		}
		local tbl = {}
		local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		})
		tbl.Layout = any_createElement_result1
		if game:GetEngineFeature("VRMoreComfortSettings") then
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1(var5_upvw, {
				LayoutOrder = var13();
			})
		else
			any_createElement_result1 = nil
		end
		tbl.VRComfortSettings = any_createElement_result1
		if game:GetEngineFeature("VRMoreComfortSettings") then
			local _ = {
				LayoutOrder = var13();
				labelKey = "CoreScripts.InGameMenu.GameSettings.VignetteEnabled";
				customValueKey = "VignetteEnabledCustomOption";
				derivedValueKey = "VignetteEnabled";
			}
			-- KONSTANTWARNING: GOTO [96] #69
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [95] 68. Error Block 29 start (CF ANALYSIS FAILED)
		tbl.VignetteEnabled = nil
		if game:GetEngineFeature("VRMoreComfortSettings") then
			local _ = {
				LayoutOrder = var13();
				labelKey = "CoreScripts.InGameMenu.GameSettings.VRSteppedRotationEnabled";
				customValueKey = "VRSmoothRotationEnabledCustomOption";
				derivedValueKey = "VRSmoothRotationEnabled";
				checkedValue = false;
			}
			-- KONSTANTWARNING: GOTO [129] #93
		end
		-- KONSTANTERROR: [95] 68. Error Block 29 end (CF ANALYSIS FAILED)
	end)
end
local CloseMenu_upvr = require(script.Parent.Parent.Parent.Thunks.CloseMenu)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: CloseMenu_upvr (readonly)
	]]
	return {
		closeMenu = function() -- Line 85, Named "closeMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
		end;
	}
end)(any_extend_result1)