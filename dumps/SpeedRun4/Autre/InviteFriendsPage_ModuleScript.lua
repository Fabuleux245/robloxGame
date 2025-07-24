-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:36
-- Luau version 6, Types version 3
-- Time taken: 0.010673 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InviteFriendsPage")
local tbl_4 = {
	pageTitle = t.string;
	canCaptureFocus = t.optional(t.boolean);
	PlayersService = t.union(t.Instance, t.table);
}
local var59
local function INLINED() -- Internal function, doesn't exist in bytecode
	var59 = t.string
	return var59
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
	var59 = nil
end
tbl_4.menuPage = var59
any_extend_result1.validateProps = t.strictInterface(tbl_4)
any_extend_result1.defaultProps = {
	PlayersService = game:GetService("Players");
}
function any_extend_result1.init(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.backButtonRef = Roact_upvr.createRef()
	arg1.searchBoxRef = Roact_upvr.createRef()
	arg1.state = {
		loadingFriends = true;
		loadingFriendsError = false;
		friends = {};
	}
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
function any_extend_result1.renderLoadingPage(arg1) -- Line 54
	--[[ Upvalues[3]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ThemedTextLabel_upvr (readonly)
	]]
	return withLocalization_upvr({
		loading = "CoreScripts.InGameMenu.InviteFriends.Loading";
	})(function(arg1_2) -- Line 57
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ThemedTextLabel_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
			Text = arg1_2.loading;
			fontKey = "Header1";
			themeKey = "TextEmphasis";
		})
	end)
end
local LoadingFriendsError_upvr = require(script.LoadingFriendsError)
function any_extend_result1.renderError(arg1) -- Line 68
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LoadingFriendsError_upvr (readonly)
	]]
	return Roact_upvr.createElement(LoadingFriendsError_upvr, {
		onRetry = function() -- Line 70, Named "onRetry"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				loadingFriends = true;
				loadingFriendsError = false;
			})
			arg1:loadFriends()
		end;
		canCaptureFocus = arg1.props.canCaptureFocus;
	})
end
local AddFriendsNow_upvr = require(script.AddFriendsNow)
function any_extend_result1.renderNoFriends(arg1) -- Line 81
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: AddFriendsNow_upvr (readonly)
	]]
	return Roact_upvr.createElement(AddFriendsNow_upvr, {
		canCaptureFocus = arg1.props.canCaptureFocus;
	})
end
local function sortFriends_upvr(arg1, arg2) -- Line 87, Named "sortFriends"
	local IsOnline = arg1.IsOnline
	if IsOnline == arg2.IsOnline then
		if arg1.Username:lower() >= arg2.Username:lower() then
			IsOnline = false
		else
			IsOnline = true
		end
		return IsOnline
	end
	IsOnline = arg1.IsOnline
	if IsOnline then
		IsOnline = not arg2.IsOnline
	end
	return IsOnline
end
local InviteFriendsList_upvr = require(script.InviteFriendsList)
function any_extend_result1.renderFriends(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: InviteFriendsList_upvr (readonly)
	]]
	return Roact_upvr.createElement(InviteFriendsList_upvr, {
		friends = arg1.state.friends;
		canCaptureFocus = arg1.props.canCaptureFocus;
		searchBoxRef = arg1.searchBoxRef;
	})
end
local PageNavigationWatcher_upvr = require(Parent.Components.PageNavigationWatcher)
local RootedConnection_upvr = require(Parent.Components.Connection.RootedConnection)
local FocusHandler_upvr = require(Parent.Components.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
local Page_upvr = require(Parent.Components.Page)
local function render(arg1) -- Line 103
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: PageNavigationWatcher_upvr (readonly)
		[3]: RootedConnection_upvr (readonly)
		[4]: FocusHandler_upvr (readonly)
		[5]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: Page_upvr (readonly)
	]]
	local state_upvr = arg1.state
	local tbl_3_upvr = {
		Watcher = Roact_upvr.createElement(PageNavigationWatcher_upvr, {
			desiredPage = "InviteFriends";
			onNavigateTo = function() -- Line 108, Named "onNavigateTo"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:loadFriends()
			end;
		});
	}
	if state_upvr.loadingFriends then
		tbl_3_upvr.Loading = arg1:renderLoadingPage()
	elseif state_upvr.loadingFriendsError then
		tbl_3_upvr.ErrorLoading = arg1:renderError()
	elseif #state_upvr.friends == 0 then
		tbl_3_upvr.NoFriends = arg1:renderNoFriends()
	else
		tbl_3_upvr.FriendsList = arg1:renderFriends()
	end
	return Roact_upvr.createElement(RootedConnection_upvr, {
		render = function(arg1_3) -- Line 125, Named "render"
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FocusHandler_upvr (copied, readonly)
				[3]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: state_upvr (readonly)
				[6]: GuiService_upvr (copied, readonly)
				[7]: Page_upvr (copied, readonly)
				[8]: tbl_3_upvr (readonly)
			]]
			local module_4 = {}
			local var37
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var37 = true
				return arg1.props.menuPage == "InviteFriends"
			end
			if not GetFFlagIGMGamepadSelectionHistory_upvr() or INLINED_3() then
				var37 = nil
			end
			module_4.shouldForgetPreviousSelection = var37
			var37 = arg1.props.canCaptureFocus
			if var37 then
				var37 = state_upvr.loadingFriends
				if var37 then
					var37 = arg1_3
				end
			end
			module_4.isFocused = var37
			function module_4.didFocus() -- Line 132
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				GuiService_upvr.SelectedCoreObject = arg1.backButtonRef:getValue()
			end
			;({}).Page = Roact_upvr.createElement(Page_upvr, {
				pageTitle = arg1.props.pageTitle;
				buttonRef = arg1.backButtonRef;
				NextSelectionDown = arg1.searchBoxRef;
			}, tbl_3_upvr)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return Roact_upvr.createElement(FocusHandler_upvr, module_4, {})
		end;
	})
end
any_extend_result1.render = render
function any_extend_result1.didMount(arg1) -- Line 146
	arg1.mounted = true
	arg1:loadFriends()
end
local Promise_upvr = require(Parent.Utility.Promise)
local Cryo_upvr = InGameMenuDependencies.Cryo
function any_extend_result1.loadFriends(arg1) -- Line 151
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: sortFriends_upvr (readonly)
	]]
	Promise_upvr.new(function(arg1_4, arg2) -- Line 152
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: sortFriends_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 153
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: sortFriends_upvr (copied, readonly)
				[5]: arg1_4 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
			local LocalPlayer_upvr = arg1.props.PlayersService.LocalPlayer
			local pcall_result1, pcall_result2 = pcall(function() -- Line 155
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: LocalPlayer_upvr (readonly)
				]]
				return arg1.props.PlayersService:GetFriendsAsync(LocalPlayer_upvr.UserId)
			end)
			if not pcall_result1 then
				arg2("Error loading friends")
				return
			end
			-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [68] 50. Error Block 10 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [68] 50. Error Block 10 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 16. Error Block 18 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [68.5]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [68.6]
			for _, _ in "Error loading friends" do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTERROR: [20] 16. Error Block 18 end (CF ANALYSIS FAILED)
		end)()
	end):andThen(function(arg1_5) -- Line 194
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.mounted then
			local tbl_2 = {
				loadingFriends = false;
			}
			tbl_2.friends = arg1_5
			arg1:setState(tbl_2)
		end
	end):catch(function() -- Line 202
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.mounted then
			arg1:setState({
				loadingFriends = false;
				loadingFriendsError = true;
			})
		end
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 212
	arg1.mounted = false
end
local Constants_upvr = require(Parent.Resources.Constants)
function var59(arg1, arg2) -- Line 216
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	local var64 = false
	local var65
	if arg1.menuPage == "InviteFriends" then
		var64 = arg1.isMenuOpen
		if var64 then
			var64 = false
			var65 = arg1.displayOptions
			var65 = Constants_upvr.InputType.Gamepad
			if var65.inputType == var65 then
				var65 = arg1.respawn
				var64 = not var65.dialogOpen
				if var64 then
					if arg1.currentZone ~= 1 then
						var64 = false
					else
						var64 = true
					end
				end
			end
		end
	end
	local module_3 = {
		canCaptureFocus = var64;
	}
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var65 = arg1.menuPage
		return var65
	end
	if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_5() then
		var65 = nil
	end
	module_3.menuPage = var65
	return module_3
end
var59 = any_extend_result1
return InGameMenuDependencies.RoactRodux.connect(var59)(var59)