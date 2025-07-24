-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:35
-- Luau version 6, Types version 3
-- Time taken: 0.007903 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Parent = script.Parent.Parent
local Dependencies = require(Parent.Dependencies)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Constants_upvr = require(Parent.Resources.Constants)
local Colors_upvr = UIBlox.App.Style.Colors
local tbl_4_upvr = {
	BackgroundDefault = {
		Color = Colors_upvr.Flint;
		Transparency = 1;
	};
	BackgroundOnHover = {
		Color = Colors_upvr.Graphite;
		Transparency = 0.666;
	};
	BackgroundOnPress = {
		Color = Colors_upvr.Graphite;
		Transparency = 0;
	};
}
local function Divider_upvr(arg1) -- Line 67, Named "Divider"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Colors_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", Cryo_upvr.Dictionary.join({
		Size = UDim2.new(1, 0, 0, 1);
	}, arg1, {
		BorderSizePixel = 0;
		BackgroundColor3 = Colors_upvr.Graphite;
		BackgroundTransparency = 0.5;
		theme = Cryo_upvr.None;
	}))
end
local GetFFlagReportMenuCellToUseAutomaticSize_upvr = require(RobloxGui.Modules.Flags.GetFFlagReportMenuCellToUseAutomaticSize)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local ThemedTextLabel_upvr = require(Dependencies.ThemedTextLabel)
local function CategoryCellContent_upvr(arg1) -- Line 85, Named "CategoryCellContent"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: GetFFlagReportMenuCellToUseAutomaticSize_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: ThemedTextLabel_upvr (readonly)
	]]
	local module_2 = {
		BackgroundTransparency = 1;
	}
	local udim2 = UDim2.new(1, 0, 0, 72)
	module_2.Size = udim2
	if GetFFlagReportMenuCellToUseAutomaticSize_upvr() then
		udim2 = Enum.AutomaticSize.XY
	else
		udim2 = nil
	end
	module_2.AutomaticSize = udim2
	local module = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_3 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		CustomIcon = arg1.iconComponent or nil;
	}
	local icon = arg1.icon
	if icon then
		icon = Roact_upvr.createElement
		icon = icon(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = arg1.icon.Image;
			Size = arg1.icon.Size;
		})
	end
	tbl_3.Icon = icon
	module.IconFrame = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 68, 1, 0);
		LayoutOrder = 1;
	}, tbl_3)
	module.TextFrame = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, -68, 1, 0);
		LayoutOrder = 2;
	}, {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 2);
		});
		Text = Roact_upvr.createElement(ThemedTextLabel_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			themeKey = "TextEmphasis";
			fontKey = "Header2";
			Size = UDim2.new(1, 0, 0, 20);
			Text = arg1.text;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextXAlignment = Enum.TextXAlignment.Left;
		});
		SubText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			fontKey = "CaptionBody";
			themeKey = "TextMuted";
			Size = UDim2.new(1, 0, 0, 14);
			Text = arg1.subtext;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextXAlignment = Enum.TextXAlignment.Left;
		});
	})
	return Roact_upvr.createElement("Frame", module_2, module)
end
local Cell_upvr = UIBlox.App.Table.Cell
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local function CategoryCell_upvr(arg1) -- Line 144, Named "CategoryCell"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Cell_upvr (readonly)
		[3]: useSelectionCursor_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: CategoryCellContent_upvr (readonly)
	]]
	return Roact_upvr.createElement(Cell_upvr, {
		userInteractionEnabled = true;
		onActivated = arg1.onActivated;
		SelectionImageObject = useSelectionCursor_upvr(CursorKind_upvr.Square);
		layoutOrder = arg1.layoutOrder;
		size = UDim2.new(1, 0, 0, 72);
		head = CategoryCellContent_upvr(arg1);
		tail = Roact_upvr.createElement("Frame");
	})
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportCategoryDialog")
any_extend_result1.validateProps = t.strictInterface({
	isReportCategoryMenuOpen = t.boolean;
	screenSize = t.Vector2;
	inputType = t.optional(t.string);
	reportType = t.optional(t.valueOf(Constants_upvr.ReportType));
	targetPlayer = t.optional(require(Dependencies.playerInterface));
	closeDialog = t.callback;
	selectReportCategory = t.optional(t.callback);
	playerFocusedFlow = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 169
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.buttonRef = Roact_upvr.createRef()
	function arg1.onCancel() -- Line 172
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.closeDialog()
	end
end
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local Assets_upvr = require(Parent.Resources.Assets)
local GameIcon_upvr = require(Dependencies.GameIcon)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Provider_upvr = UIBlox.Core.Style.Provider
local BarOnTopScrollingFrame_upvr = require(Dependencies.BarOnTopScrollingFrame)
function any_extend_result1.renderContents(arg1, arg2, arg3) -- Line 177
	--[[ Upvalues[12]:
		[1]: Roact_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: CategoryCell_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: Divider_upvr (readonly)
		[8]: GameIcon_upvr (readonly)
		[9]: withStyle_upvr (readonly)
		[10]: tbl_4_upvr (readonly)
		[11]: Provider_upvr (readonly)
		[12]: BarOnTopScrollingFrame_upvr (readonly)
	]]
	local tbl_6_upvr = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local var49 = arg2
	if arg2 then
		local any_getRecentUsersInteractionData_result1 = default_upvr:getRecentUsersInteractionData()
		if any_getRecentUsersInteractionData_result1 and not Cryo_upvr.isEmpty(any_getRecentUsersInteractionData_result1) then
			if arg1.props.playerFocusedFlow then
				local targetPlayer = arg1.props.targetPlayer
				if targetPlayer then
					if any_getRecentUsersInteractionData_result1[tostring(arg1.props.targetPlayer.UserId)] == nil then
						targetPlayer = false
					else
						targetPlayer = true
					end
				end
				var49 = targetPlayer
				-- KONSTANTWARNING: GOTO [60] #43
			end
		else
			var49 = false
		end
	end
	if var49 then
		local tbl_5 = {
			text = arg3.voiceHeader;
			subtext = arg3.voiceDescription;
			icon = Assets_upvr.Images.VoiceChatIcon;
			layoutOrder = #tbl_6_upvr + 1;
		}
		local function onActivated() -- Line 211
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			arg1.props.selectReportCategory(Constants_upvr.Category.Voice)
		end
		tbl_5.onActivated = onActivated
		table.insert(tbl_6_upvr, Roact_upvr.createElement(CategoryCell_upvr, tbl_5))
		table.insert(tbl_6_upvr, Roact_upvr.createElement(Divider_upvr, {
			LayoutOrder = #tbl_6_upvr + 1;
		}))
	end
	local tbl = {
		text = arg3.textHeader;
		subtext = arg3.textDescription;
		icon = Assets_upvr.Images.TextChatIcon;
		layoutOrder = #tbl_6_upvr + 1;
	}
	local function onActivated() -- Line 231
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		arg1.props.selectReportCategory(Constants_upvr.Category.Text)
	end
	tbl.onActivated = onActivated
	table.insert(tbl_6_upvr, Roact_upvr.createElement(CategoryCell_upvr, tbl))
	table.insert(tbl_6_upvr, Roact_upvr.createElement(Divider_upvr, {
		LayoutOrder = #tbl_6_upvr + 1;
	}))
	if not arg1.props.playerFocusedFlow then
		local tbl_2 = {
			iconComponent = Roact_upvr.createElement(GameIcon_upvr, {
				gameId = game.GameId;
				iconSize = 33;
				cornerRadius = UDim.new(0, 8);
			});
			text = arg3.experienceHeader;
			subtext = arg3.experienceDescription;
			layoutOrder = #tbl_6_upvr + 1;
		}
		local function onActivated() -- Line 255
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			arg1.props.selectReportCategory(Constants_upvr.Category.Experience)
		end
		tbl_2.onActivated = onActivated
		table.insert(tbl_6_upvr, Roact_upvr.createElement(CategoryCell_upvr, tbl_2))
		table.insert(tbl_6_upvr, Roact_upvr.createElement(Divider_upvr, {
			LayoutOrder = #tbl_6_upvr + 1;
		}))
	end
	table.insert(tbl_6_upvr, Roact_upvr.createElement(CategoryCell_upvr, {
		text = arg3.otherHeader;
		subtext = arg3.otherDescription;
		icon = Assets_upvr.Images.OtherIcon;
		layoutOrder = #tbl_6_upvr + 1;
		onActivated = function() -- Line 276, Named "onActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			arg1.props.selectReportCategory(Constants_upvr.Category.Other)
		end;
	}))
	table.insert(tbl_6_upvr, Roact_upvr.createElement(Divider_upvr, {
		LayoutOrder = #tbl_6_upvr + 1;
	}))
	return withStyle_upvr(function(arg1_2) -- Line 289
		--[[ Upvalues[7]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: tbl_4_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: Provider_upvr (copied, readonly)
			[5]: BarOnTopScrollingFrame_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: tbl_6_upvr (readonly)
		]]
		return Roact_upvr.createElement(Provider_upvr, {
			style = Cryo_upvr.Dictionary.join(arg1_2, {
				Theme = Cryo_upvr.Dictionary.join(arg1_2.Theme, tbl_4_upvr);
			});
		}, {Roact_upvr.createElement(BarOnTopScrollingFrame_upvr, {
			Size = UDim2.fromScale(1, 1);
			CanvasSize = UDim2.new(1, 0, 0, 72);
			scrollingFrameRef = arg1.scrollingFrameRef;
		}, tbl_6_upvr)})
	end)
end
local withVoiceState_upvr = require(RobloxGui.Modules.VoiceChat.VoiceStateContext).withVoiceState
local withLocalization_upvr = require(Dependencies.withLocalization)
local ModalDialog_upvr = require(Parent.Components.ModalDialog)
function any_extend_result1.render(arg1) -- Line 306
	--[[ Upvalues[4]:
		[1]: withVoiceState_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ModalDialog_upvr (readonly)
	]]
	return withVoiceState_upvr(function(arg1_3) -- Line 307
		--[[ Upvalues[4]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ModalDialog_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return withLocalization_upvr({
			titleText = "CoreScripts.InGameMenu.Report.MenuTitle";
			dismissText = "CoreScripts.InGameMenu.Report.Done";
			voiceHeader = "CoreScripts.InGameMenu.Report.Category.Header.Voice";
			voiceDescription = "CoreScripts.InGameMenu.Report.Category.Description.Voice";
			textHeader = "CoreScripts.InGameMenu.Report.Category.Header.Text";
			textDescription = "CoreScripts.InGameMenu.Report.Category.Description.Text";
			experienceHeader = "CoreScripts.InGameMenu.Report.Category.Header.Experience";
			experienceDescription = "CoreScripts.InGameMenu.Report.Category.Description.Experience";
			otherHeader = "CoreScripts.InGameMenu.Report.Category.Header.Other";
			otherDescription = "CoreScripts.InGameMenu.Report.Category.Description.Other";
		})(function(arg1_4) -- Line 319
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: ModalDialog_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg1_3 (readonly)
			]]
			return Roact_upvr.createFragment({
				ModalDialog = Roact_upvr.createElement(ModalDialog_upvr, {
					visible = arg1.props.isReportCategoryMenuOpen;
					screenSize = arg1.props.screenSize;
					titleText = arg1_4.titleText;
					contents = arg1:renderContents(arg1_3.voiceEnabled, arg1_4);
					showCloseButton = true;
					onDismiss = arg1.onCancel;
				});
			})
		end)
	end)
end
local SelectReportCategory_upvr = require(Parent.Actions.SelectReportCategory)
local EndReportFlow_upvr = require(Parent.Actions.EndReportFlow)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local SessionUtility_upvr = require(Parent.Utility.SessionUtility)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 334
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local module_3 = {}
	local var76
	if arg1.report.currentPage ~= Constants_upvr.Page.Category then
		var76 = false
	else
		var76 = true
	end
	module_3.isReportCategoryMenuOpen = var76
	var76 = arg1.report.reportType
	module_3.reportType = var76
	var76 = arg1.report.targetPlayer
	module_3.targetPlayer = var76
	var76 = arg1.displayOptions.screenSize
	module_3.screenSize = var76
	if arg1.report.beginningReportType ~= Constants_upvr.ReportType.Player then
		var76 = false
	else
		var76 = true
	end
	module_3.playerFocusedFlow = var76
	return module_3
end, function(arg1) -- Line 343
	--[[ Upvalues[5]:
		[1]: SelectReportCategory_upvr (readonly)
		[2]: EndReportFlow_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: SessionUtility_upvr (readonly)
	]]
	return {
		selectReportCategory = function(arg1_5) -- Line 345, Named "selectReportCategory"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SelectReportCategory_upvr (copied, readonly)
			]]
			arg1(SelectReportCategory_upvr(arg1_5))
		end;
		closeDialog = function() -- Line 348, Named "closeDialog"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: EndReportFlow_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
				[5]: SessionUtility_upvr (copied, readonly)
			]]
			arg1(EndReportFlow_upvr())
			SendAnalytics_upvr(Constants_upvr.Analytics.ReportType, Constants_upvr.Analytics.ReportFlowAbandoned, {
				source = Constants_upvr.Analytics.ReportType;
			})
			SessionUtility_upvr.endAbuseReportSession()
		end;
	}
end)(any_extend_result1)