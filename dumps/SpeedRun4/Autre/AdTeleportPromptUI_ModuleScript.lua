-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:37
-- Luau version 6, Types version 3
-- Time taken: 0.003844 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local any_extend_result1 = Roact_upvr.Component:extend("InteractiveAlert")
function any_extend_result1.init(arg1) -- Line 26
	arg1.state = {
		screenSize = game.Workspace.CurrentCamera.ViewportSize;
	}
	function arg1.updateViewport() -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			screenSize = game.Workspace.CurrentCamera.ViewportSize;
		})
	end
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ExternalEventConnection_upvr = UIBlox.Utility.ExternalEventConnection
local RunService_upvr = game:GetService("RunService")
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.renderWithStyle(arg1, arg2) -- Line 36
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: ExternalEventConnection_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
	]]
	local var13
	if game.Workspace.CurrentCamera == nil then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "Appeasing the type checking")
	var13 = Roact_upvr
	var13 = {}
	var13.InteractiveAlert = Roact_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = arg1.state.screenSize;
		title = arg1:generateTitle();
		bodyText = arg1:shouldGenerateBody();
		buttonStackInfo = {
			buttons = arg1:generateButtons();
		};
		onAbsoluteSizeChanged = arg1.props.onAbsoluteSizeChanged;
	})
	local tbl = {
		event = RunService_upvr.Heartbeat;
	}
	local function callback() -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.handler:onHeartbeat()
	end
	tbl.callback = callback
	var13.HeartbeatConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl)
	var13.GamepadFocusConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = UserInputService_upvr.LastInputTypeChanged;
		callback = function() -- Line 58, Named "callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.handler:focusIfGamepad()
		end;
	})
	var13.viewportSizeListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = game.Workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize");
		callback = arg1.updateViewport;
	})
	return var13.createFragment(var13)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
function any_extend_result1.render(arg1) -- Line 69
	--[[ Upvalues[1]:
		[1]: withStyle_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 70
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithStyle(arg1_2)
	end)
end
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.generateButtons(arg1) -- Line 75
	--[[ Upvalues[2]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
	]]
	local tbl_2 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_3 = {}
	local function onActivated() -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.handler:acceptPrompt()
	end
	tbl_3.onActivated = onActivated
	tbl_3.text = RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Action.PortalPromptAccept")
	tbl_2.props = tbl_3
	tbl_2.isDefaultChild = true
	if arg1.props.shouldRenderCancelButton then
		return {{
			props = {
				onActivated = function() -- Line 92, Named "onActivated"
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1.props.handler:rejectButton()
				end;
				text = RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Action.PortalPromptCancel");
			};
		}, tbl_2}
	end
	return {tbl_2}
end
function any_extend_result1.shouldGenerateBody(arg1) -- Line 105
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	if arg1.props.shouldRenderCancelButton then
		return nil
	end
	return RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Label.PortalPromptDismissWalkAway")
end
function any_extend_result1.generateTitle(arg1) -- Line 112
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	if arg1.props.experienceName then
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Label.PortalPromptTeleportToWithName", {
			RBX_NAME = arg1.props.experienceName;
		})
	end
	return RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Label.PortalPromptTeleportToWithoutName")
end
return any_extend_result1