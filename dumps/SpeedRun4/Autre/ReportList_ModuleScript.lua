-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:56
-- Luau version 6, Types version 3
-- Time taken: 0.006795 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportList")
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local tbl = {
	placeName = t.string;
	players = t.array(t.union(t.instanceIsA("Player"), t.strictInterface({
		UserId = t.integer;
		Name = t.string;
	})));
	canCaptureFocus = t.optional(t.boolean);
}
local var59
local function INLINED() -- Internal function, doesn't exist in bytecode
	var59 = t.optional(t.string)
	return var59
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
	var59 = nil
end
tbl.currentPage = var59
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	var59 = t.optional(t.number)
	return var59
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_2() then
	var59 = nil
end
tbl.currentZone = var59
any_extend_result1.validateProps = t.strictInterface(tbl)
local function sortPlayers_upvr(arg1, arg2) -- Line 57, Named "sortPlayers"
	local var13
	if arg1.Name:lower() >= arg2.Name:lower() then
		var13 = false
	else
		var13 = true
	end
	return var13
end
function any_extend_result1.init(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.reportGameRef = Roact_upvr.createRef()
end
local Cryo_upvr = InGameMenuDependencies.Cryo
local FocusHandler_upvr = require(script.Parent.Parent.Connection.FocusHandler)
local GameLabel_upvr = require(script.Parent.GameLabel)
local TrustAndSafety_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TrustAndSafety)
local ReportButton_upvr = require(script.Parent.ReportButton)
local Divider_upvr = require(Parent.Components.Divider)
local PlayerLabel_upvr = require(Parent.Components.PlayerLabel)
function any_extend_result1.renderListEntries(arg1) -- Line 65
	--[[ Upvalues[12]:
		[1]: Cryo_upvr (readonly)
		[2]: sortPlayers_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[5]: FocusHandler_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: GameLabel_upvr (readonly)
		[9]: TrustAndSafety_upvr (readonly)
		[10]: ReportButton_upvr (readonly)
		[11]: Divider_upvr (readonly)
		[12]: PlayerLabel_upvr (readonly)
	]]
	local any_sort_result1 = Cryo_upvr.List.sort(arg1.props.players, sortPlayers_upvr)
	local var26 = 3
	local module_3 = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
		});
	}
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		local tbl_2 = {
			isFocused = arg1.props.canCaptureFocus;
		}
		local var30 = true
		if arg1.props.currentPage ~= Constants_upvr.MainPagePageKey then
			if arg1.props.currentZone ~= 0 then
				var30 = false
			else
				var30 = true
			end
		end
		tbl_2.shouldForgetPreviousSelection = var30
		function tbl_2.didFocus(arg1_2) -- Line 83
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local var31 = arg1_2
			if not var31 then
				var31 = arg1.reportGameRef:getValue()
			end
			GuiService_upvr.SelectedCoreObject = var31
		end
		module_3.FocusHandler = Roact_upvr.createElement(FocusHandler_upvr, tbl_2)
	end
	local tbl_3 = {
		gameId = game.GameId;
		gameName = arg1.props.placeName;
		LayoutOrder = 1;
		[Roact_upvr.Ref] = arg1.reportGameRef;
	}
	local function onActivated() -- Line 94
		--[[ Upvalues[2]:
			[1]: TrustAndSafety_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		TrustAndSafety_upvr.openReportDialogForPlace(Constants_upvr.AnalyticsInGameMenuName)
	end
	tbl_3.onActivated = onActivated
	module_3.GameReport = Roact_upvr.createElement(GameLabel_upvr, tbl_3, {
		ReportButton = Roact_upvr.createElement(ReportButton_upvr, {
			LayoutOrder = 1;
		});
	})
	if 0 < #any_sort_result1 then
		module_3["divider_"..var26] = Roact_upvr.createElement(Divider_upvr, {
			LayoutOrder = 2;
			Size = UDim2.new(1, -80, 0, 1);
		})
	end
	for i, v_upvr in pairs(any_sort_result1) do
		module_3["player_"..i] = Roact_upvr.createElement(PlayerLabel_upvr, {
			username = v_upvr.Name;
			userId = v_upvr.UserId;
			isOnline = true;
			isSelected = false;
			LayoutOrder = var26;
			onActivated = function() -- Line 118, Named "onActivated"
				--[[ Upvalues[3]:
					[1]: TrustAndSafety_upvr (copied, readonly)
					[2]: v_upvr (readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				TrustAndSafety_upvr.openReportDialogForPlayer(v_upvr, Constants_upvr.AnalyticsInGameMenuName)
			end;
		}, {
			ReportButton = Roact_upvr.createElement(ReportButton_upvr, {
				userId = v_upvr.UserId;
				userName = v_upvr.Name;
				LayoutOrder = 1;
			});
		})
		local var42 = var26 + 1
		if i < #any_sort_result1 then
			module_3["divider_"..var42] = Roact_upvr.createElement(Divider_upvr, {
				LayoutOrder = var42;
				Size = UDim2.new(1, -80, 0, 1);
			})
		end
	end
	return module_3
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 144
	--[[ Upvalues[2]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if not GetFFlagIGMGamepadSelectionHistory_upvr() and arg1.props.canCaptureFocus and not arg2.canCaptureFocus then
		GuiService_upvr.SelectedCoreObject = arg1.reportGameRef:getValue()
	end
end
local isShowEUDSAIllegalContentReportingLink_upvr = require(CorePackages.Workspace.Packages.DsaIllegalContentReporting).isShowEUDSAIllegalContentReportingLink
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local BarOnTopScrollingFrame_upvr = require(Parent.Components.BarOnTopScrollingFrame)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
function any_extend_result1.render(arg1) -- Line 153
	--[[ Upvalues[5]:
		[1]: isShowEUDSAIllegalContentReportingLink_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BarOnTopScrollingFrame_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
	]]
	local var48_upvr = #arg1.props.players * 71 + 70
	if isShowEUDSAIllegalContentReportingLink_upvr() then
		return withLocalization_upvr({
			DSAFooterText = "CoreScripts.InGameMenu.Report.DSAFooter";
		})(function(arg1_3) -- Line 159
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: BarOnTopScrollingFrame_upvr (copied, readonly)
				[3]: var48_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: ThemedTextLabel_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(1, 0, 1, -50);
				BackgroundTransparency = 1;
			}, {
				ScrollingFrame = Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, {
					Position = UDim2.new(0, 0, 0, 0);
					Size = UDim2.new(1, 0, 1, -50);
					CanvasSize = UDim2.new(1, 0, 0, var48_upvr);
				}, arg1:renderListEntries());
				EUWarning = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 50);
					Position = UDim2.new(0, 0, 1, -50);
					BackgroundTransparency = 1;
				}, {
					Padding = Roact_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 30);
						PaddingRight = UDim.new(0, 30);
						PaddingTop = UDim.new(0, 20);
					});
					TextLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						fontKey = "Footer";
						themeKey = "TextEmphasis";
						AnchorPoint = Vector2.new(0.5, 0.5);
						Position = UDim2.new(0.5, 0, 0.5, 0);
						Size = UDim2.new(1, 0, 1, 0);
						TextWrapped = true;
						Text = arg1_3.DSAFooterText;
						TextXAlignment = Enum.TextXAlignment.Center;
					});
				});
			})
		end)
	end
	return Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, {
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 1, 0);
		CanvasSize = UDim2.new(1, 0, 0, var48_upvr);
	}, arg1:renderListEntries())
end
function var59(arg1, arg2) -- Line 204
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
	local var64 = false
	local var65
	if arg1.menuPage == "Report" then
		var64 = false
		var65 = arg1.displayOptions
		var65 = Constants_upvr.InputType.Gamepad
		if var65.inputType == var65 then
			var65 = arg1.report
			local dialogOpen = var65.dialogOpen
			if not dialogOpen then
				var65 = arg1.report
				dialogOpen = var65.reportSentOpen
				if not dialogOpen then
					var65 = arg1.respawn
					dialogOpen = var65.dialogOpen
				end
			end
			var64 = not dialogOpen
			if var64 then
				if arg1.currentZone ~= 1 then
					var64 = false
				else
					var64 = true
				end
			end
		end
	end
	local module_2 = {
		placeName = arg1.gameInfo.name;
		canCaptureFocus = var64;
	}
	if not GetFFlagIGMGamepadSelectionHistory_upvr() then
		var65 = nil
		-- KONSTANTWARNING: GOTO [55] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 35. Error Block 27 start (CF ANALYSIS FAILED)
	var65 = arg1.menuPage
	module_2.currentPage = var65
	if not GetFFlagIGMGamepadSelectionHistory_upvr() then
		var65 = nil
	else
		var65 = arg1.currentZone
	end
	module_2.currentZone = var65
	do
		return module_2
	end
	-- KONSTANTERROR: [53] 35. Error Block 27 end (CF ANALYSIS FAILED)
end
var59 = any_extend_result1
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(var59)(var59)