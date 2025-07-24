-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:32
-- Luau version 6, Types version 3
-- Time taken: 0.002309 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("HeadsetMenu")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	vrService = t.optional(t.union(t.instanceOf("VRService"), t.table));
	guiService = t.optional(t.union(t.instanceOf("GuiService"), t.table));
})
any_extend_result1.defaultProps = {
	vrService = game:GetService("VRService");
	guiService = game:GetService("GuiService");
}
local isSubjectToDesktopPolicies_upvr = require(CorePackages.Workspace.Packages.SharedFlags).isSubjectToDesktopPolicies
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: isSubjectToDesktopPolicies_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	arg1.state = {
		vrDeviceAvailable = false;
		shouldShowDisconnectDialog = false;
	}
	function arg1.restartApp() -- Line 39
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
		]]
		if isSubjectToDesktopPolicies_upvr() then
			if game:GetEngineFeature("EnableLuaControlsRestartApp") then
				arg1.props.guiService:BroadcastNotification("", arg1.props.guiService:GetNotificationTypeList().RESTART_APP)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.props.guiService:BroadcastNotification("", arg1.props.guiService:GetNotificationTypeList().NATIVE_EXIT)
			end
		else
			RunService_upvr.Heartbeat:Wait()
			game:Shutdown()
		end
		arg1:setState({
			shouldShowDisconnectDialog = false;
		})
	end
end
local EventConnection_upvr = require(script.Parent.Parent.Parent.Parent.Common.EventConnection)
local DisconnectedDialog_upvr = require(script.DisconnectedDialog)
function any_extend_result1.render(arg1) -- Line 59
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: DisconnectedDialog_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		HeadsetConnection = Roact_upvr.createElement(EventConnection_upvr, {
			event = arg1.props.vrService:GetPropertyChangedSignal("VRDeviceAvailable");
			callback = function() -- Line 63, Named "callback"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:setState({
					vrDeviceAvailable = arg1.props.vrService.VRDeviceAvailable;
				})
			end;
		}, {
			HeadsetDisconnectedDialog = Roact_upvr.createElement(DisconnectedDialog_upvr, {
				visible = arg1.state.shouldShowDisconnectDialog;
				screenSize = arg1.props.screenSize;
				onConfirm = arg1.restartApp;
				guiService = arg1.props.guiService;
			});
		});
	})
end
function any_extend_result1.didMount(arg1) -- Line 79
	arg1:setState({
		vrDeviceAvailable = arg1.props.vrService.VRDeviceAvailable;
	})
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 85
	if arg1.state.vrDeviceAvailable ~= arg3.vrDeviceAvailable and not arg1.state.vrDeviceAvailable then
		arg1:setState({
			shouldShowDisconnectDialog = true;
		})
	end
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 95
	return {
		screenSize = arg1.displayOptions.screenSize;
	}
end)(any_extend_result1)