-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:37
-- Luau version 6, Types version 3
-- Time taken: 0.019478 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local Dependencies = require(Parent.Dependencies)
local Constants_upvr = require(Parent.Resources.Constants)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local tbl_12_upvr = {
	BackgroundDefault = {
		Color = UIBlox.App.Style.Colors.Flint;
		Transparency = 1;
	};
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportMenu")
local React_upvr = require(CorePackages.Packages.React)
local VoiceStateContext_upvr = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local VoiceIndicatorFunc_upvr = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local function var14_upvr(arg1) -- Line 66
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: VoiceStateContext_upvr (readonly)
		[3]: VoiceIndicatorFunc_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	if not React_upvr.useContext(VoiceStateContext_upvr.Context).voiceEnabled then
		return nil
	end
	return React_upvr.createElement(VoiceIndicatorFunc_upvr, Cryo_upvr.Dictionary.join(arg1, {}))
end
any_extend_result1.validateProps = t.strictInterface({
	isReportMenuOpen = t.boolean;
	screenSize = t.Vector2;
	closeDialog = t.callback;
	openReportDialog = t.callback;
	canNavigateBack = t.boolean;
	reportCategory = t.optional(t.string);
	navigateBack = t.optional(t.callback);
})
function any_extend_result1.init(arg1) -- Line 84
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: default_upvr (readonly)
	]]
	arg1.scrollingFrameRef = Roact_upvr.createRef()
	arg1.state = {
		isFilterMode = false;
		filterText = nil;
	}
	function arg1.onSearch() -- Line 92
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isFilterMode = true;
			filterText = "";
		})
	end
	function arg1.onTextChanged(arg1_2) -- Line 99
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.filterText = arg1_2
		arg1:setState(tbl_3)
	end
	function arg1.onCancel() -- Line 105
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		arg1:setState({
			isFilterMode = false;
			filterText = Roact_upvr.None;
		})
	end
	function arg1.scrollToTop() -- Line 112
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getValue_result1_3 = arg1.scrollingFrameRef:getValue()
		if any_getValue_result1_3 then
			any_getValue_result1_3:scrollToTop()
		end
	end
	function arg1.navigateBack() -- Line 119
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props = arg1.props
		if arg1.state.filterText == nil then
			props = false
		else
			props = true
		end
		props.navigateBack(props)
	end
	function arg1.closeDialog() -- Line 123
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props_3 = arg1.props
		if arg1.state.filterText == nil then
			props_3 = false
		else
			props_3 = true
		end
		props_3.closeDialog(props_3)
	end
	arg1.layoutBindings = {}
	function arg1.getLayoutBinding(arg1_3, arg2) -- Line 128
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		local var33 = arg1.layoutBindings[arg1_3]
		if not var33 then
			local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(arg2)
			local tbl_6 = {
				valueBinding = any_createBinding_result1;
				setValue = any_createBinding_result2;
			}
			tbl_6.value = arg2
			var33 = tbl_6
			arg1.layoutBindings[arg1_3] = var33
		end
		if var33.value ~= arg2 then
			var33.value = arg2
			var33.setValue(arg2)
		end
		return var33.valueBinding
	end
	function arg1.playerIsVoiceActive(arg1_4) -- Line 148
		--[[ Upvalues[1]:
			[1]: default_upvr (copied, readonly)
		]]
		local var38
		if default_upvr.participants[tostring(arg1_4)] == nil then
			var38 = false
		else
			var38 = true
		end
		return var38
	end
	arg1.sortedUserIds = {}
end
local function sortPlayers_upvr(arg1, arg2) -- Line 155, Named "sortPlayers"
	local var39
	if arg1.DisplayName:lower() >= arg2.DisplayName:lower() then
		var39 = false
	else
		var39 = true
	end
	return var39
end
local Players_upvr = game:GetService("Players")
local PlayerSearchPredicate_upvr = require(Dependencies.PlayerSearchPredicate)
function any_extend_result1.getPlayerList(arg1) -- Line 159
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: sortPlayers_upvr (readonly)
		[4]: PlayerSearchPredicate_upvr (readonly)
	]]
	for _, v in ipairs(Cryo_upvr.List.sort(Players_upvr:GetPlayers(), sortPlayers_upvr)) do
		if v == Players_upvr.LocalPlayer then
		elseif not arg1.state.isFilterMode then
			table.insert({}, v)
		elseif PlayerSearchPredicate_upvr(arg1.state.filterText, v.Name, v.DisplayName) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Cryo_upvr.List.sort({}, function(arg1_5, arg2) -- Line 175
		local var48
		if arg1_5.DisplayName:lower() >= arg2.DisplayName:lower() then
			var48 = false
		else
			var48 = true
		end
		return var48
	end)
end
local module_upvr = {
	[Constants_upvr.Category.Voice] = "CoreScripts.InGameMenu.Report.Title.VoiceChat";
	[Constants_upvr.Category.Text] = "CoreScripts.InGameMenu.Report.Title.TextChat";
	[Constants_upvr.Category.Other] = "CoreScripts.InGameMenu.Report.Title.Other";
}
function any_extend_result1.categoryTitle(arg1) -- Line 187
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr[arg1.props.reportCategory] or "CoreScripts.InGameMenu.Report.MenuTitle"
end
local GetFFlagUIBloxUseNewHeaderBar_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseNewHeaderBar
local makeBackButton_upvr = require(CorePackages.Workspace.Packages.AppHeaderBar).makeBackButton
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local withLocalization_upvr = require(Dependencies.withLocalization)
local SearchBar_upvr = require(Dependencies.SearchBar)
function any_extend_result1.renderHeaderBar(arg1) -- Line 191
	--[[ Upvalues[9]:
		[1]: GetFFlagUIBloxUseNewHeaderBar_upvr (readonly)
		[2]: makeBackButton_upvr (readonly)
		[3]: HeaderBar_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: IconButton_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: withLocalization_upvr (readonly)
		[9]: SearchBar_upvr (readonly)
	]]
	local var58_upvw
	if arg1.props.canNavigateBack then
		if GetFFlagUIBloxUseNewHeaderBar_upvr() then
			var58_upvw = makeBackButton_upvr(arg1.navigateBack)
		else
			var58_upvw = HeaderBar_upvr.renderLeft.backButton(arg1.navigateBack)
		end
	else
		var58_upvw = function() -- Line 198
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: IconButton_upvr (copied, readonly)
				[3]: IconSize_upvr (copied, readonly)
				[4]: Images_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			local module = {}
			module.iconSize = IconSize_upvr.Medium
			module.icon = Images_upvr["icons/navigation/close"]
			module.onActivated = arg1.closeDialog
			return Roact_upvr.createElement(IconButton_upvr, module)
		end
	end
	if not arg1.state.isFilterMode then
		return withLocalization_upvr({
			titleText = arg1:categoryTitle();
		})(function(arg1_6) -- Line 210
			--[[ Upvalues[7]:
				[1]: Roact_upvr (copied, readonly)
				[2]: HeaderBar_upvr (copied, readonly)
				[3]: var58_upvw (read and write)
				[4]: IconButton_upvr (copied, readonly)
				[5]: IconSize_upvr (copied, readonly)
				[6]: Images_upvr (copied, readonly)
				[7]: arg1 (readonly)
			]]
			return Roact_upvr.createElement(HeaderBar_upvr, {
				backgroundTransparency = 1;
				barHeight = 48;
				renderLeft = var58_upvw;
				renderRight = function() -- Line 215, Named "renderRight"
					--[[ Upvalues[5]:
						[1]: Roact_upvr (copied, readonly)
						[2]: IconButton_upvr (copied, readonly)
						[3]: IconSize_upvr (copied, readonly)
						[4]: Images_upvr (copied, readonly)
						[5]: arg1 (copied, readonly)
					]]
					return Roact_upvr.createElement(IconButton_upvr, {
						iconSize = IconSize_upvr.Medium;
						icon = Images_upvr["icons/common/search"];
						onActivated = arg1.onSearch;
					})
				end;
				onHeaderActivated = arg1.scrollToTop;
				title = arg1_6.titleText;
			})
		end)
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Position = UDim2.fromOffset(24, 6);
		Size = UDim2.new(1, -48, 1, -12);
	}, {Roact_upvr.createElement(SearchBar_upvr, {
		size = UDim2.fromScale(1, 1);
		text = arg1.state.filterText;
		autoCaptureFocus = true;
		onTextChanged = arg1.onTextChanged;
		onCancelled = arg1.onCancel;
	})})
end
local GameCell_upvr = require(Parent.Components.GameCell)
local Divider_upvr = require(Dependencies.Divider)
local PlayerCell_upvr = require(Dependencies.PlayerCell)
local isPlayerVerified_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.isPlayerVerified
local Constants_upvr_2 = require(RobloxGui.Modules.VoiceChat.Constants)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Provider_upvr = UIBlox.Core.Style.Provider
local BarOnTopScrollingFrame_upvr = require(Dependencies.BarOnTopScrollingFrame)
function any_extend_result1.renderContents(arg1) -- Line 243
	--[[ Upvalues[14]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GameCell_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: Divider_upvr (readonly)
		[6]: PlayerCell_upvr (readonly)
		[7]: isPlayerVerified_upvr (readonly)
		[8]: var14_upvr (readonly)
		[9]: Constants_upvr_2 (readonly)
		[10]: withStyle_upvr (readonly)
		[11]: Cryo_upvr (readonly)
		[12]: tbl_12_upvr (readonly)
		[13]: Provider_upvr (readonly)
		[14]: BarOnTopScrollingFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var117
	if arg1.props.reportCategory ~= Constants_upvr.Category.Voice then
		var117 = false
	else
		var117 = true
	end
	local tbl_15_upvr = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	if not arg1.state.isFilterMode then
		if arg1.props.reportCategory == Constants_upvr.Category.None then
			local tbl_14 = {
				gameId = game.GameId;
				layoutOrder = arg1.getLayoutBinding("GameCell", 0);
			}
			local props_4_upvr = arg1.props
			local function onActivated() -- Line 260
				--[[ Upvalues[2]:
					[1]: props_4_upvr (readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				props_4_upvr.openReportDialog(Constants_upvr.ReportType.Place, nil)
			end
			tbl_14.onActivated = onActivated
			tbl_15_upvr.GameCell = Roact_upvr.createElement(GameCell_upvr, tbl_14)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var122 = 0 + 1
	if var117 then
	end
	arg1.sortedUserIds = {}
	for _, v_2_upvr in pairs(arg1:getPlayerList()) do
		local tostring_result1_2 = tostring(v_2_upvr.UserId)
		local var127
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var127 = default_upvr:getRecentUsersInteractionData()[tostring(v_2_upvr.UserId)]
			return var127
		end
		if not var117 or INLINED_3() then
			var127 = table.insert
			var127(arg1.sortedUserIds, v_2_upvr.UserId)
			var127 = 0
			if var117 then
				var127 += 1
			end
			if arg1.props.isReportMenuOpen then
				var127 += 2
			end
			tbl_15_upvr["Divider"..tostring_result1_2] = Roact_upvr.createElement(Divider_upvr, {
				LayoutOrder = arg1.getLayoutBinding("Divider"..tostring_result1_2, var122);
				Size = UDim2.new(1, 0, 0, 1);
			})
			local var129 = var122 + 1
			local tbl_11 = {}
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				function tbl_13.onClicked() -- Line 317
					--[[ Upvalues[3]:
						[1]: default_upvr (copied, readonly)
						[2]: v_2_upvr (readonly)
						[3]: Constants_upvr_2 (copied, readonly)
					]]
					default_upvr:ToggleMutePlayer(v_2_upvr.UserId, Constants_upvr_2.VOICE_CONTEXT_TYPE.REPORT_MENU)
				end
				tbl_13.size = UDim2.fromOffset(36, 36)
				tbl_13.iconStyle = "SpeakerLight"
				tbl_13.hideOnError = true
				tbl_13.userId = tostring(v_2_upvr.UserId)
				local tbl_13 = {}
				return Roact_upvr.createElement(var14_upvr, tbl_13)
			end
			if not var117 or not arg1.props.isReportMenuOpen or not INLINED_4() then
			end
			tbl_11.VoiceIndicator = nil
			tbl_15_upvr["PlayerCell"..tostring_result1_2] = Roact_upvr.createElement(PlayerCell_upvr, {
				userId = v_2_upvr.UserId;
				username = v_2_upvr.Name;
				displayName = v_2_upvr.DisplayName;
				hasVerifiedBadge = isPlayerVerified_upvr(v_2_upvr);
				isOnline = true;
				isSelected = false;
				LayoutOrder = arg1.getLayoutBinding("PlayerCell"..tostring_result1_2, var129);
				onActivated = function() -- Line 305, Named "onActivated"
					--[[ Upvalues[3]:
						[1]: props_4_upvr (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: v_2_upvr (readonly)
					]]
					props_4_upvr.openReportDialog(Constants_upvr.ReportType.Player, v_2_upvr)
				end;
				memoKey = var127;
			}, tbl_11)
		end
	end
	local tbl_4 = {
		LayoutOrder = arg1.getLayoutBinding("DividerEnd", var129 + 1);
	}
	var127 = 0
	tbl_4.Size = UDim2.new(1, 0, var127, 1)
	tbl_15_upvr.DividerEnd = Roact_upvr.createElement(Divider_upvr, tbl_4)
	local var136_upvw = 72 + 73
	return withStyle_upvr(function(arg1_8) -- Line 337
		--[[ Upvalues[8]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: tbl_12_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: Provider_upvr (copied, readonly)
			[5]: BarOnTopScrollingFrame_upvr (copied, readonly)
			[6]: var136_upvw (read and write)
			[7]: arg1 (readonly)
			[8]: tbl_15_upvr (readonly)
		]]
		return Roact_upvr.createElement(Provider_upvr, {
			style = Cryo_upvr.Dictionary.join(arg1_8, {
				Theme = Cryo_upvr.Dictionary.join(arg1_8.Theme, tbl_12_upvr);
			});
		}, {Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, {
			Size = UDim2.fromScale(1, 1);
			CanvasSize = UDim2.new(1, 0, 0, var136_upvw);
			scrollingFrameRef = arg1.scrollingFrameRef;
		}, tbl_15_upvr)})
	end)
end
local ModalDialog_upvr = require(Parent.Components.ModalDialog)
function any_extend_result1.render(arg1) -- Line 354
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ModalDialog_upvr (readonly)
	]]
	local var142
	if arg1.props.reportCategory == nil then
		var142 = false
	else
		var142 = true
	end
	return Roact_upvr.createFragment({
		ModalDialog = Roact_upvr.createElement(ModalDialog_upvr, {
			visible = arg1.props.isReportMenuOpen;
			screenSize = arg1.props.screenSize;
			headerBar = arg1:renderHeaderBar();
			showCloseButton = not var142;
			contents = arg1:renderContents();
			onDismiss = arg1.closeDialog;
		});
	})
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 370
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg2.isReportMenuOpen and not arg1.props.isReportMenuOpen then
		arg1:setState({
			isFilterMode = false;
			filterText = Roact_upvr.None;
		})
		local any_getValue_result1 = arg1.scrollingFrameRef:getValue()
		if any_getValue_result1 and 0 < any_getValue_result1.CanvasPosition.Y then
			any_getValue_result1.CanvasPosition = Vector2.new(0, 0)
		end
	end
end
local NavigateBack_upvr = require(Parent.Actions.NavigateBack)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local EndReportFlow_upvr = require(Parent.Actions.EndReportFlow)
local SessionUtility_upvr = require(Parent.Utility.SessionUtility)
local SelectReportListing_upvr = require(Parent.Actions.SelectReportListing)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 384
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local module_2 = {}
	local var151
	if arg1.report.currentPage ~= Constants_upvr.Page.Listing then
		var151 = false
	else
		var151 = true
	end
	module_2.isReportMenuOpen = var151
	var151 = arg1.displayOptions.screenSize
	module_2.screenSize = var151
	var151 = arg1.report.reportCategory
	module_2.reportCategory = var151
	if 1 >= #arg1.report.history then
		var151 = false
	else
		var151 = true
	end
	module_2.canNavigateBack = var151
	return module_2
end, function(arg1) -- Line 392
	--[[ Upvalues[6]:
		[1]: NavigateBack_upvr (readonly)
		[2]: SendAnalytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: EndReportFlow_upvr (readonly)
		[5]: SessionUtility_upvr (readonly)
		[6]: SelectReportListing_upvr (readonly)
	]]
	return {
		navigateBack = function(arg1_9) -- Line 394, Named "navigateBack"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: NavigateBack_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(NavigateBack_upvr())
			local tbl_8 = {
				source = Constants_upvr.Page.Listing;
			}
			tbl_8.filterTextChanged = arg1_9
			SendAnalytics_upvr(Constants_upvr.Page.Listing, Constants_upvr.Analytics.ReportFlowBack, tbl_8)
		end;
		closeDialog = function(arg1_10) -- Line 401, Named "closeDialog"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: EndReportFlow_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
				[5]: SessionUtility_upvr (copied, readonly)
			]]
			arg1(EndReportFlow_upvr())
			local tbl_9 = {
				source = Constants_upvr.Page.Listing;
			}
			tbl_9.filterTextChanged = arg1_10
			SendAnalytics_upvr(Constants_upvr.Page.Listing, Constants_upvr.Analytics.ReportFlowAbandoned, tbl_9)
			SessionUtility_upvr.endAbuseReportSession()
		end;
		openReportDialog = function(arg1_11, arg2, arg3) -- Line 409, Named "openReportDialog"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: SelectReportListing_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(SelectReportListing_upvr(arg1_11, arg2, arg3))
			local tbl_5 = {
				source = Constants_upvr.Page.Listing;
			}
			tbl_5.reportType = arg1_11
			SendAnalytics_upvr(Constants_upvr.Page.Listing, Constants_upvr.Analytics.ReportFlowAdvance, tbl_5)
		end;
	}
end)(any_extend_result1)