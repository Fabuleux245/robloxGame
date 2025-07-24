-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:24
-- Luau version 6, Types version 3
-- Time taken: 0.008031 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local var8_upvw
local var9_upvw
local var10_upvw
if isInExperienceUIVREnabled_upvr then
	var8_upvw = require(CorePackages.Workspace.Packages.Responsive)
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	var9_upvw = VrSpatialUi.UIManager
	var10_upvw = VrSpatialUi.Constants.PanelType
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local GetFFlagModalSelectorCloseButton_upvr = require(AbuseReportMenu.Flags.GetFFlagModalSelectorCloseButton)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local ScrollingListTable_upvr = UIBlox.App.Table.ScrollingListTable
local Dash_upvr = require(CorePackages.Packages.Dash)
local Cell_upvr = UIBlox.App.Table.Cell
local CellHeadDetail_upvr = UIBlox.App.Table.CellHeadDetail
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = SharedFlags.GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
local CellTailDescription_upvr = UIBlox.App.Table.CellTailDescription
local ModalWindow_upvr = UIBlox.App.Dialog.Modal.ModalWindow
local function ModalBaseSelectorDialog_upvr(arg1) -- Line 64, Named "ModalBaseSelectorDialog"
	--[[ Upvalues[19]:
		[1]: useStyle_upvr (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: var9_upvw (read and write)
		[5]: var10_upvw (read and write)
		[6]: React_upvr (readonly)
		[7]: GetFFlagModalSelectorCloseButton_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: IconButton_upvr (readonly)
		[10]: IconSize_upvr (readonly)
		[11]: Images_upvr (readonly)
		[12]: ScrollingListTable_upvr (readonly)
		[13]: Dash_upvr (readonly)
		[14]: Cell_upvr (readonly)
		[15]: CellHeadDetail_upvr (readonly)
		[16]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[17]: OpenTypeSupport_upvr (readonly)
		[18]: CellTailDescription_upvr (readonly)
		[19]: ModalWindow_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12_result1 = useStyle_upvr()
	local Theme = var12_result1.Theme
	local Space_500 = var12_result1.Tokens.Global.Space_500
	local var29
	if isInExperienceUIVREnabled_upvr then
		local viewportHeight = arg1.viewportHeight
		if var8_upvw.useIsSpatial() then
			viewportHeight = var9_upvw.getInstance():getPanelObject(var10_upvw.MoreMenu).AbsoluteSize.Y
		end
		var29 = math.min(#arg1.cellData * 40, viewportHeight - 80 - 24)
	else
		var29 = math.min(#arg1.cellData * 40, arg1.viewportHeight - 80 - 24)
	end
	local var31 = 0
	local var32 = 0
	local tbl_3 = {
		Paddings = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12);
			PaddingBottom = UDim.new(0, 12);
			PaddingLeft = UDim.new(0, 12);
			PaddingRight = UDim.new(0, 12);
		});
	}
	if GetFFlagModalSelectorCloseButton_upvr() then
		var31 = 12
		var32 = -36
		local tbl_2 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = 0;
			});
		}
		local tbl_4 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
			});
		}
		local tbl_5 = {
			size = UDim2.fromOffset(0, 0);
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/close"];
		}
		local function onActivated() -- Line 119
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.onClose()
		end
		tbl_5.onActivated = onActivated
		tbl_4.CloseButton = React_upvr.createElement(IconButton_upvr, tbl_5)
		tbl_2.Header = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Space_500);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, tbl_4)
		tbl_2.Divider = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
			BackgroundTransparency = var12_result1.Theme.Divider.Transparency;
			BackgroundColor3 = var12_result1.Theme.Divider.Color;
			BorderSizePixel = 0;
			LayoutOrder = 2;
		})
		tbl_3 = Cryo_upvr.Dictionary.join(tbl_3, tbl_2)
	end
	local module_2 = {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}
	local var54 = 0
	module_2.Position = UDim2.new(var54, 0, 0, 0)
	local module_4 = {}
	if arg1.isShown then
		var54 = React_upvr.createElement
		var54 = var54("TextButton", {
			Selectable = false;
			AutoButtonColor = false;
			BorderSizePixel = 0;
			BackgroundColor3 = Theme.Overlay.Color;
			BackgroundTransparency = Theme.Overlay.Transparency;
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			ZIndex = 10;
			Text = "";
			[React_upvr.Event.Activated] = function() -- Line 194
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.onClose()
			end;
		}, {
			Modal = React_upvr.createElement(ModalWindow_upvr, {
				isFullHeight = false;
				screenSize = Vector2.new(arg1.viewportWidth, arg1.viewportHeight);
			}, {
				ModalContent = React_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, var29 + 48 + Space_500);
					BackgroundTransparency = 0;
					BackgroundColor3 = Theme.BackgroundDefault.Color;
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 0.5, 20);
				}, Cryo_upvr.Dictionary.join(tbl_3, {
					SelectorFrame = React_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, var32);
						BackgroundTransparency = 1;
						LayoutOrder = 3;
					}, {
						Paddings = React_upvr.createElement("UIPadding", {
							PaddingTop = UDim.new(0, var31);
						});
						ModalSelector = React_upvr.createElement(ScrollingListTable_upvr, {
							selectable = false;
							size = UDim2.new(1, 0, 1, 0);
							cells = Dash_upvr.map(arg1.cellData, function(arg1_2) -- Line 148
								--[[ Upvalues[7]:
									[1]: React_upvr (copied, readonly)
									[2]: Cell_upvr (copied, readonly)
									[3]: CellHeadDetail_upvr (copied, readonly)
									[4]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (copied, readonly)
									[5]: OpenTypeSupport_upvr (copied, readonly)
									[6]: CellTailDescription_upvr (copied, readonly)
									[7]: arg1 (readonly)
								]]
								local module = {}
								local tbl = {
									labelText = arg1_2.label;
								}
								local subLabel = arg1_2.subLabel
								tbl.subLabelText = subLabel
								if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
									subLabel = OpenTypeSupport_upvr:getUserNameStylisticAlternative()
								else
									subLabel = nil
								end
								tbl.openTypeFeatures = subLabel
								module.head = React_upvr.createElement(CellHeadDetail_upvr, tbl)
								module.tail = React_upvr.createElement(CellTailDescription_upvr, {
									text = "";
									showArrow = false;
								})
								module.background = React_upvr.createElement("Frame", {
									BackgroundTransparency = 1;
									Size = UDim2.fromScale(1, 1);
								})
								module.size = UDim2.new(1, 0, 0, 40)
								module.userInteractionEnabled = true
								function module.onActivated() -- Line 167
									--[[ Upvalues[2]:
										[1]: arg1 (copied, readonly)
										[2]: arg1_2 (readonly)
									]]
									arg1.onSelect(arg1_2.label, arg1_2.subLabel, arg1_2.identifier)
									arg1.onClose()
								end
								return React_upvr.createElement(Cell_upvr, module)
							end);
						});
					});
				}));
			});
		})
	else
		var54 = nil
	end
	module_4.Overlay = var54
	return React_upvr.createElement("Frame", module_2, module_4)
end
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FFlagCSFocusWrapperRefactor_upvr = SharedFlags.FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
function DialogWrapper(arg1) -- Line 215
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: CoreScriptsRootProvider_upvr (readonly)
		[3]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[4]: FocusRoot_upvr (readonly)
		[5]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[6]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ModalBaseSelectorDialog_upvr (readonly)
	]]
	local module_3 = {}
	local var69 = React_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var69 = FocusRoot_upvr
	else
		var69 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl_6 = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			isAutoFocusRoot = true;
		}
	else
	end
	module_3.FocusNavigationCoreScriptsWrapper = var69.createElement(var69, {
		selectionGroupName = Constants_upvr.ModalBaseSelectorDialogRootName;
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
	}, {
		DialogContainer = React_upvr.createElement(ModalBaseSelectorDialog_upvr, arg1);
	})
	return React_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module_3)
end
return DialogWrapper