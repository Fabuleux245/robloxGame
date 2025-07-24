-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:11
-- Luau version 6, Types version 3
-- Time taken: 0.003245 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("ControlsPage")
any_extend_result1.validateProps = t.strictInterface({
	pageTitle = t.string;
	controlLayout = t.optional(t.string);
	canCaptureFocus = t.optional(t.boolean);
})
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.closeButtonRef = Roact_upvr.createRef()
end
local Controls_upvr = require(Parent.Resources.Controls)
local KeyboardControls_upvr = require(script.ControlLayouts.KeyboardControls)
local VRService_upvr = require(CorePackages.Workspace.Packages.MockableProxyServices).VRService
local VRUtil_upvr = require(CorePackages.Workspace.Packages.VrCommon).VRUtil
local VRGamepadControls_upvr = require(script.ControlLayouts.VRGamepadControls)
local GamepadControls_upvr = require(script.ControlLayouts.GamepadControls)
local FocusHandler_upvr = require(Parent.Components.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[9]:
		[1]: Controls_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: KeyboardControls_upvr (readonly)
		[4]: VRService_upvr (readonly)
		[5]: VRUtil_upvr (readonly)
		[6]: VRGamepadControls_upvr (readonly)
		[7]: GamepadControls_upvr (readonly)
		[8]: FocusHandler_upvr (readonly)
		[9]: GuiService_upvr (readonly)
	]]
	local controlLayout = arg1.props.controlLayout
	if controlLayout == Controls_upvr.ControlLayouts.KEYBOARD then
		return Roact_upvr.createElement(KeyboardControls_upvr)
	end
	if controlLayout == Controls_upvr.ControlLayouts.GAMEPAD then
		if VRService_upvr.VREnabled and VRUtil_upvr.getCurrentControllerType() == "Touch" then
			return Roact_upvr.createElement(VRGamepadControls_upvr)
		end
		return Roact_upvr.createFragment({
			GamepadControls = Roact_upvr.createElement(GamepadControls_upvr, {
				closeButtonRef = arg1.closeButtonRef;
			});
			FocusHandler = Roact_upvr.createElement(FocusHandler_upvr, {
				isFocused = arg1.props.canCaptureFocus;
				didFocus = function() -- Line 52, Named "didFocus"
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: GuiService_upvr (copied, readonly)
					]]
					local any_getValue_result1 = arg1.closeButtonRef:getValue()
					GuiService_upvr:AddSelectionParent("IGMControlsPage_CloseButtonSelectionGroup", any_getValue_result1)
					GuiService_upvr.SelectedCoreObject = any_getValue_result1
				end;
				didBlur = function() -- Line 57, Named "didBlur"
					--[[ Upvalues[1]:
						[1]: GuiService_upvr (copied, readonly)
					]]
					GuiService_upvr:RemoveSelectionGroup("IGMControlsPage_CloseButtonSelectionGroup")
				end;
			});
		})
	end
	return nil
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 69
	local module = {
		controlLayout = arg1.controlLayout;
	}
	local var23
	if arg1.menuPage ~= "Controls" then
		var23 = false
	else
		var23 = true
	end
	module.canCaptureFocus = var23
	return module
end)(any_extend_result1)