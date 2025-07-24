-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:33
-- Luau version 6, Types version 3
-- Time taken: 0.002074 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerListSwitcher")
local PlayerListInitialVisibleState_upvr = require(Parent.PlayerListInitialVisibleState)
function any_extend_result1.didMount(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: PlayerListInitialVisibleState_upvr (readonly)
	]]
	arg1.props.setPlayerListVisible(PlayerListInitialVisibleState_upvr())
end
local UiModeStyleProvider_upvr = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
function any_extend_result1.wrapWithUiModeStyleProvider(arg1, arg2) -- Line 29
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: UiModeStyleProvider_upvr (readonly)
	]]
	return {
		ThemeProvider = Roact_upvr.createElement(UiModeStyleProvider_upvr, {
			style = {
				themeName = arg1.props.appStyleForUiModeStyleProvider.themeName;
				fontName = arg1.props.appStyleForUiModeStyleProvider.fontName;
			};
		}, arg2);
	}
end
local Provider_upvr = require(Parent.Components.Connection.LayoutValues).Provider
local CreateLayoutValues_upvr = require(Parent.CreateLayoutValues)
local TenFootInterface_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TenFootInterface)
local PlayerListApp_upvr = require(Parent.Components.PresentationMobile.PlayerListApp)
local PlayerListApp_upvr_2 = require(Parent.Components.Presentation.PlayerListApp)
function any_extend_result1.render(arg1) -- Line 40
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Provider_upvr (readonly)
		[3]: CreateLayoutValues_upvr (readonly)
		[4]: TenFootInterface_upvr (readonly)
		[5]: PlayerListApp_upvr (readonly)
		[6]: PlayerListApp_upvr_2 (readonly)
	]]
	local module = {}
	local var17
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var17 = var17(PlayerListApp_upvr, tbl)
		tbl.setLayerCollectorEnabled = arg1.props.setLayerCollectorEnabled
		local tbl = {}
		var17 = Roact_upvr.createElement
		return var17
	end
	if not arg1.props.isSmallTouchDevice or not INLINED() then
		var17 = Roact_upvr.createElement
		var17 = var17(PlayerListApp_upvr_2, {
			setLayerCollectorEnabled = arg1.props.setLayerCollectorEnabled;
		})
	end
	module.PlayerListApp = var17
	return Roact_upvr.createElement(Provider_upvr, {
		layoutValues = CreateLayoutValues_upvr(TenFootInterface_upvr:IsEnabled());
	}, arg1:wrapWithUiModeStyleProvider(module))
end
function any_extend_result1.didUpdate(arg1) -- Line 56
	arg1.props.setPlayerListVisible(not arg1.props.isSmallTouchDevice)
end
local SetPlayerListVisibility_upvr = require(Parent.Actions.SetPlayerListVisibility)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 60, Named "mapStateToProps"
	return {
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
	}
end, function(arg1) -- Line 66, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetPlayerListVisibility_upvr (readonly)
	]]
	return {
		setPlayerListVisible = function(arg1_2) -- Line 68, Named "setPlayerListVisible"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerListVisibility_upvr (copied, readonly)
			]]
			return arg1(SetPlayerListVisibility_upvr(arg1_2))
		end;
	}
end)(any_extend_result1)