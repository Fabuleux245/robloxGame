-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:27
-- Luau version 6, Types version 3
-- Time taken: 0.003607 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local InGameMenu = RobloxGui.Modules.InGameMenu
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("SettingsFullScreenTitleBar")
any_extend_result1_upvr.validateProps = t.strictInterface({
	titleText = t.optional(t.string);
	onClose = t.optional(t.callback);
	_mockFullScreen = t.optional(t.boolean);
})
any_extend_result1_upvr.defaultProps = {
	titleText = "Roblox";
}
function any_extend_result1_upvr.init(arg1) -- Line 44
	arg1:setState({
		isTriggered = false;
	})
	function arg1.show() -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setTriggered(true)
	end
	function arg1.hide() -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setTriggered(false)
	end
	function arg1.cancel() -- Line 55
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:unsetTriggered()
	end
	function arg1.onFullscreenChanged() -- Line 58
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:unsetTriggered()
		arg1:setState({
			isTriggered = false;
		})
	end
end
local Promise_upvr = InGameMenuDependencies.Promise
local GetFIntFullscreenTitleBarTriggerDelayMillis_upvr = require(InGameMenu.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis)
function any_extend_result1_upvr.setTriggered(arg1, arg2) -- Line 66
	--[[ Upvalues[3]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: GetFIntFullscreenTitleBarTriggerDelayMillis_upvr (readonly)
	]]
	arg1:unsetTriggered()
	if UserGameSettings_upvr:InFullScreen() or arg1.props._mockFullScreen then
		arg1.triggerPromise = Promise_upvr.delay(GetFIntFullscreenTitleBarTriggerDelayMillis_upvr() / 1000):andThenCall(function() -- Line 69
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.triggerPromise = nil
			local tbl_2 = {}
			tbl_2.isTriggered = arg2
			arg1:setState(tbl_2)
		end)
	end
end
function any_extend_result1_upvr.unsetTriggered(arg1) -- Line 78
	if arg1.triggerPromise then
		arg1.triggerPromise:cancel()
		arg1.triggerPromise = nil
	end
end
function any_extend_result1_upvr.toggleFullscreen(arg1) -- Line 85
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:ToggleFullscreen()
end
local RunService_upvr = game:GetService("RunService")
local GetDefaultQualityLevel_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel
function any_extend_result1_upvr.leaveGame(arg1) -- Line 89
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: GetDefaultQualityLevel_upvr (readonly)
	]]
	GuiService_upvr.SelectedCoreObject = nil
	RunService_upvr.RenderStepped:Wait()
	RunService_upvr.RenderStepped:Wait()
	game:Shutdown()
	settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
end
local Constants_upvr = require(InGameMenu.Resources.Constants)
local ExternalEventConnection_upvr = require(InGameMenu.Utility.ExternalEventConnection)
local FullscreenTitleBar_upvr = InGameMenuDependencies.UIBlox.App.Bar.FullscreenTitleBar
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1_upvr.render(arg1) -- Line 103
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: UserGameSettings_upvr (readonly)
		[6]: FullscreenTitleBar_upvr (readonly)
		[7]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	local tbl_4 = {}
	local tbl_3 = {
		FullscreenChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserGameSettings_upvr.FullscreenChanged;
			callback = arg1.onFullscreenChanged;
		});
		TriggerArea = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, 1);
			[Roact_upvr.Event.MouseEnter] = arg1.show;
			[Roact_upvr.Event.MouseLeave] = arg1.cancel;
		});
	}
	local tbl = {
		title = arg1.props.titleText;
		isTriggered = arg1.state.isTriggered;
		onDisappear = arg1.hide;
		onHover = arg1.cancel;
		exitFullscreen = arg1.toggleFullscreen;
	}
	local onClose = arg1.props.onClose
	if not onClose then
		onClose = arg1.leaveGame
	end
	tbl.closeRoblox = onClose
	tbl_3.Bar = Roact_upvr.createElement(FullscreenTitleBar_upvr, tbl)
	tbl_4.InGameFullscreenTitleBarScreen = Roact_upvr.createElement("ScreenGui", {
		Enabled = true;
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		DisplayOrder = Constants_upvr.DisplayOrder.FullscreenTitleBar;
	}, tbl_3)
	return renderWithCoreScriptsStyleProvider_upvr({
		FullscreenTitleBar = Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, tbl_4);
	})
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 139
	arg1:unsetTriggered()
end
return {
	mount = function(arg1, arg2, arg3) -- Line 144, Named "mount"
		--[[ Upvalues[2]:
			[1]: Roact_upvr (readonly)
			[2]: any_extend_result1_upvr (readonly)
		]]
		local var39 = arg1
		if not var39 then
			var39 = {}
		end
		return Roact_upvr.mount(Roact_upvr.createElement(any_extend_result1_upvr, var39), arg2, arg3)
	end;
	update = function(arg1, arg2) -- Line 147, Named "update"
		--[[ Upvalues[2]:
			[1]: Roact_upvr (readonly)
			[2]: any_extend_result1_upvr (readonly)
		]]
		return Roact_upvr.update(arg1, Roact_upvr.createElement(any_extend_result1_upvr, arg2))
	end;
	unmount = function(arg1) -- Line 150, Named "unmount"
		--[[ Upvalues[1]:
			[1]: Roact_upvr (readonly)
		]]
		return Roact_upvr.unmount(arg1)
	end;
}