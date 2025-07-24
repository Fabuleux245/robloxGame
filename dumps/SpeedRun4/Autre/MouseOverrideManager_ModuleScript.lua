-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:09
-- Luau version 6, Types version 3
-- Time taken: 0.001708 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("MouseOverrideManager")
any_extend_result1.validateProps = t.strictInterface({
	menuOpen = t.boolean;
	exitModalOpen = t.boolean;
	inputType = t.string;
})
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.render(arg1) -- Line 30
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	local module = {
		event = UserInputService_upvr:GetPropertyChangedSignal("OverrideMouseIconBehavior");
	}
	local exitModalOpen_upvr = arg1.props.exitModalOpen
	function module.callback() -- Line 35
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: exitModalOpen_upvr (readonly)
			[3]: UserInputService_upvr (copied, readonly)
		]]
		if arg1.props.menuOpen or exitModalOpen_upvr then
			if UserInputService_upvr.OverrideMouseIconBehavior == Enum.OverrideMouseIconBehavior.None then
				arg1:updateMouseIconOverride()
			end
		end
	end
	return Roact_upvr.createElement(ExternalEventConnection_upvr, module)
end
function any_extend_result1.init(arg1) -- Line 48
	arg1.didOverrideMouse = false
end
local InputType_upvr = require(Parent.Resources.Constants).InputType
local VRService_upvr = game:GetService("VRService")
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
local any_named_result1_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol.named("InGameMenuCursorOverride")
function any_extend_result1.updateMouseIconOverride(arg1) -- Line 52
	--[[ Upvalues[4]:
		[1]: InputType_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: MouseIconOverrideService_upvr (readonly)
		[4]: any_named_result1_upvr (readonly)
	]]
	if arg1.props.menuOpen or arg1.props.exitModalOpen then
		arg1.didOverrideMouse = true
		if arg1.props.inputType == InputType_upvr.Gamepad or VRService_upvr.VREnabled then
			MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceHide)
		else
			MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	end
	if arg1.didOverrideMouse then
		arg1.didOverrideMouse = false
		MouseIconOverrideService_upvr.pop(any_named_result1_upvr)
	end
end
function any_extend_result1.didMount(arg1) -- Line 68
	arg1:updateMouseIconOverride()
end
function any_extend_result1.didUpdate(arg1) -- Line 72
	arg1:updateMouseIconOverride()
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 76
	return {
		menuOpen = arg1.isMenuOpen;
		exitModalOpen = arg1.nativeClosePrompt.closingApp;
		inputType = arg1.displayOptions.inputType;
	}
end, nil)(any_extend_result1)