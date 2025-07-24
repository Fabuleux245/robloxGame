-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:12
-- Luau version 6, Types version 3
-- Time taken: 0.004848 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local Wrappers = require(Foundation.Utility.Wrappers)
local var5_upvr
if Wrappers.Services.Players.LocalPlayer and Wrappers.Services.RunService:IsRunning() then
	var5_upvr = Wrappers.Services.Players.LocalPlayer:WaitForChild("PlayerGui", 3)
else
	var5_upvr = nil
end
if require(Foundation.Utility.isPluginSecurity)() then
else
end
local React_upvr = require(Parent.React)
local useStyleSheet_upvr = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet
local OverlayContext_upvr = require(script.Parent.OverlayContext)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local Flags_upvr = require(Foundation.Utility.Flags)
return function(arg1) -- Line 29, Named "OverlayProvider"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: useStyleSheet_upvr (readonly)
		[3]: OverlayContext_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: ReactRoblox_upvr (readonly)
		[6]: Flags_upvr (readonly)
	]]
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(arg1.gui)
	React_upvr.useEffect(function() -- Line 37
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if arg1.gui ~= nil and arg1.gui ~= any_useState_result1_upvr_2 then
			any_useState_result2_upvr(arg1.gui)
		end
	end, {arg1.gui})
	local module_3 = {}
	if not arg1.gui then
		local var32
		if var5_upvr then
			local tbl_6 = {
				Enabled = true;
				DisplayOrder = 2147483647;
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
				ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets;
				ref = React_upvr.useCallback(function(arg1_3) -- Line 33
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (readonly)
					]]
					any_useState_result2_upvr(arg1_3)
				end, {});
			}
			if Flags_upvr.FoundationDisableStylingPolyfill then
				var32 = React_upvr.createElement
				var32 = var32("StyleLink", {
					StyleSheet = useStyleSheet_upvr();
				})
			else
				var32 = nil
			end
			;({}).FoundationStyleLink = var32
			-- KONSTANTWARNING: GOTO [94] #69
		end
	end
	module_3.FoundationOverlay = nil
	module_3.Children = React_upvr.createElement(React_upvr.Fragment, nil, arg1.children)
	return React_upvr.createElement(OverlayContext_upvr.Provider, {
		value = {
			instance = any_useState_result1_upvr_2;
		};
	}, module_3)
end