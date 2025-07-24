-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:18
-- Luau version 6, Types version 3
-- Time taken: 0.005794 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local GuiService_upvr = game:GetService("GuiService")
local AppStorageService_upvr = game:GetService("AppStorageService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("FullscreenTitleBar")
any_extend_result1.validateProps = t.strictInterface({
	titleText = t.optional(t.string);
	displayOrder = t.integer;
	isMenuOpen = t.boolean;
	isEducationalPopupEnabled = t.boolean;
	maxDisplayCount = t.integer;
	openEducationalPopup = t.callback;
	startLeavingGame = t.callback;
	userGameSettings = t.optional(t.union(t.Instance, t.table));
	guiService = t.optional(t.union(t.Instance, t.table));
	appStorageService = t.optional(t.union(t.Instance, t.table));
})
any_extend_result1.defaultProps = {
	titleText = "Roblox";
	userGameSettings = UserGameSettings_upvr;
	guiService = GuiService_upvr;
	appStorageService = AppStorageService_upvr;
}
local GetFFlagFullscreenTitleBarInjectGameServices_upvr = require(Parent.Flags.GetFFlagFullscreenTitleBarInjectGameServices)
local GetFIntFullscreenTitleBarTriggerDelayMillis_upvr = require(Parent.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis)
local Promise_upvr = InGameMenuDependencies.Promise
local UserLocalStore_upvr = require(Parent.Utility.UserLocalStore)
local GetFFlagFixFullscreenTitleBarPromiseCancel_upvr = require(Parent.Flags.GetFFlagFixFullscreenTitleBarPromiseCancel)
function any_extend_result1.init(arg1) -- Line 57
	--[[ Upvalues[8]:
		[1]: GetFFlagFullscreenTitleBarInjectGameServices_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: AppStorageService_upvr (readonly)
		[5]: GetFIntFullscreenTitleBarTriggerDelayMillis_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: UserLocalStore_upvr (readonly)
		[8]: GetFFlagFixFullscreenTitleBarPromiseCancel_upvr (readonly)
	]]
	local var32
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var32 = arg1.props.userGameSettings
		return var32
	end
	if not GetFFlagFullscreenTitleBarInjectGameServices_upvr() or not INLINED() then
		var32 = UserGameSettings_upvr
	end
	arg1.userGameSettings = var32
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var32 = arg1.props.guiService
		return var32
	end
	if not GetFFlagFullscreenTitleBarInjectGameServices_upvr() or not INLINED_2() then
		var32 = GuiService_upvr
	end
	arg1.guiService = var32
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var32 = arg1.props.appStorageService
		return var32
	end
	if not GetFFlagFullscreenTitleBarInjectGameServices_upvr() or not INLINED_3() then
		var32 = AppStorageService_upvr
	end
	arg1.appStorageService = var32
	var32 = arg1:setState
	var32({
		isTriggered = false;
		fullscreenEnabled = arg1.userGameSettings:InFullScreen();
	})
	function var32(arg1_2) -- Line 69
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.fullscreenEnabled = arg1_2
		tbl.isTriggered = false
		arg1:setState(tbl)
	end
	arg1.onFullscreenChanged = var32
	function var32() -- Line 76
		--[[ Upvalues[3]:
			[1]: GetFIntFullscreenTitleBarTriggerDelayMillis_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		local var21 = GetFIntFullscreenTitleBarTriggerDelayMillis_upvr() / 1000
		if 0 < var21 then
			arg1.triggerTitleBarPromise = Promise_upvr.delay(var21):andThenCall(function() -- Line 79
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.triggerTitleBarPromise = nil
				if not arg1.state.isTriggered then
					arg1:setState({
						isTriggered = true;
					})
				end
			end)
		elseif not arg1.state.isTriggered then
			arg1:setState({
				isTriggered = true;
			})
		end
	end
	arg1.triggerTitleBar = var32
	function var32() -- Line 96
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.triggerTitleBarPromise then
			arg1.triggerTitleBarPromise:cancel()
			arg1.triggerTitleBarPromise = nil
		end
	end
	arg1.cancelTriggerTitleBar = var32
	function var32() -- Line 103
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.isTriggered then
			arg1:setState({
				isTriggered = false;
			})
		end
	end
	arg1.hideTitleBar = var32
	function var32() -- Line 111
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.hideTitleBar()
		arg1.guiService:ToggleFullscreen()
	end
	arg1.exitFullscreen = var32
	function var32() -- Line 116
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserLocalStore_upvr (copied, readonly)
		]]
		arg1.hideTitleBar()
		if arg1.props.isEducationalPopupEnabled then
			arg1.props.openEducationalPopup(arg1.guiService, UserLocalStore_upvr.new(), arg1.props.maxDisplayCount)
		else
			arg1.props.startLeavingGame()
		end
	end
	arg1.closeRoblox = var32
	function var32() -- Line 127
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: GetFFlagFixFullscreenTitleBarPromiseCancel_upvr (copied, readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		if arg1.hideTitleBarPromise then
			if GetFFlagFixFullscreenTitleBarPromiseCancel_upvr() then
				arg1.hideTitleBarPromise:cancel()
			else
				arg1.hideTitleBarPromise.cancel()
			end
			arg1.hideTitleBarPromise = nil
		end
		arg1.hideTitleBarPromise = Promise_upvr.delay(0.5):andThenCall(function() -- Line 137
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.hideTitleBarPromise = nil
			arg1.hideTitleBar()
		end)
	end
	arg1.onDisappear = var32
	function var32() -- Line 143
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.isTriggered and arg1.hideTitleBarPromise then
			arg1.hideTitleBarPromise:cancel()
			arg1.hideTitleBarPromise = nil
		end
	end
	arg1.mouseReenter = var32
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local CoreGui_upvr = game:GetService("CoreGui")
local FullscreenTitleBar_upvr = InGameMenuDependencies.UIBlox.App.Bar.FullscreenTitleBar
function any_extend_result1.render(arg1) -- Line 151
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: FullscreenTitleBar_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		FullscreenChangedEvent = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = arg1.userGameSettings.FullscreenChanged;
			callback = arg1.onFullscreenChanged;
		});
		FullscreenTitleBar = Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			InGameFullscreenTitleBarScreen = Roact_upvr.createElement("ScreenGui", {
				Enabled = arg1.state.fullscreenEnabled;
				IgnoreGuiInset = true;
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
				DisplayOrder = arg1.props.displayOrder;
			}, {
				TriggerArea = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Size = UDim2.new(1, 0, 0, 1);
					[Roact_upvr.Event.MouseEnter] = arg1.triggerTitleBar;
					[Roact_upvr.Event.MouseLeave] = arg1.cancelTriggerTitleBar;
				});
				Bar = Roact_upvr.createElement(FullscreenTitleBar_upvr, {
					title = arg1.props.titleText;
					isTriggered = arg1.state.isTriggered;
					onDisappear = arg1.onDisappear;
					onHover = arg1.mouseReenter;
					exitFullscreen = arg1.exitFullscreen;
					closeRoblox = arg1.closeRoblox;
				});
			});
		});
	})
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 186
	if not arg2.isMenuOpen and arg1.props.isMenuOpen then
		arg1.hideTitleBar()
	end
end
local GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount_upvr = require(Parent.Flags.GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount)
function any_extend_result1.willUnmount(arg1) -- Line 192
	--[[ Upvalues[1]:
		[1]: GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount_upvr (readonly)
	]]
	if GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount_upvr() then
		if arg1.hideTitleBarPromise then
			arg1.hideTitleBarPromise:cancel()
		end
		if arg1.triggerTitleBarPromise then
			arg1.triggerTitleBarPromise:cancel()
		end
	end
end
local OpenEducationalPopup_upvr = require(Parent.Thunks.OpenEducationalPopup)
local StartLeavingGame_upvr = require(Parent.Actions.StartLeavingGame)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 211
	return {
		isMenuOpen = arg1.isMenuOpen;
	}
end, function(arg1) -- Line 215
	--[[ Upvalues[2]:
		[1]: OpenEducationalPopup_upvr (readonly)
		[2]: StartLeavingGame_upvr (readonly)
	]]
	return {
		openEducationalPopup = function(arg1_3, arg2, arg3) -- Line 217, Named "openEducationalPopup"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenEducationalPopup_upvr (copied, readonly)
			]]
			return arg1(OpenEducationalPopup_upvr(arg1_3, arg2, arg3))
		end;
		startLeavingGame = function() -- Line 220, Named "startLeavingGame"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: StartLeavingGame_upvr (copied, readonly)
			]]
			arg1(StartLeavingGame_upvr())
		end;
	}
end)(require(Parent.InGameMenuPolicy).connect(function(arg1, arg2) -- Line 204
	return {
		isEducationalPopupEnabled = arg1.enableEducationalPopup();
		maxDisplayCount = arg1.educationalPopupMaxDisplayCount();
	}
end)(any_extend_result1))