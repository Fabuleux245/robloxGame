-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:23
-- Luau version 6, Types version 3
-- Time taken: 0.001874 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Foundation = require(CorePackages.Packages.Foundation)
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr = require(AbuseReportMenu.Flags.GetFFlagAddAbuseReportMenuCoreScriptsProvider)
local View_upvr = Foundation.View
local ModalBasedSelectorDialogController_upvr = require(AbuseReportMenu.Components.ModalBasedSelectorDialogController)
local Text_upvr = Foundation.Text
local Icon_upvr = Foundation.Icon
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 27, Named "ModalBasedSelector"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: ModalBasedSelectorDialogController_upvr (readonly)
		[5]: Text_upvr (readonly)
		[6]: Icon_upvr (readonly)
		[7]: Button_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
		[9]: Images_upvr (readonly)
	]]
	local module_2 = {}
	local var15 = 1
	module_2.Size = UDim2.new(var15, 0, 0, arg1.selectorHeight)
	module_2.BackgroundTransparency = 1
	local module = {}
	if GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr() then
		var15 = React_upvr.createElement
		local tbl_4 = {
			tag = "size-full stroke-thicker stroke-emphasis radius-medium";
		}
		local function onActivated() -- Line 35
			--[[ Upvalues[2]:
				[1]: ModalBasedSelectorDialogController_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			ModalBasedSelectorDialogController_upvr.mountModalSelector(arg1.viewportHeight, arg1.viewportWidth, arg1.selections, arg1.onSelect, function() -- Line 41
				--[[ Upvalues[1]:
					[1]: ModalBasedSelectorDialogController_upvr (copied, readonly)
				]]
				ModalBasedSelectorDialogController_upvr.unmountModalSelector()
			end)
		end
		tbl_4.onActivated = onActivated
		local tbl = {}
		local tbl_3 = {}
		local selectedValue = arg1.selectedValue
		if not selectedValue then
			selectedValue = arg1.placeholderText
		end
		tbl_3.Text = selectedValue
		tbl_3.tag = "size-full anchor-center-center position-center-center"
		tbl.Text = React_upvr.createElement(Text_upvr, tbl_3)
		tbl.Icon = React_upvr.createElement(Icon_upvr, {
			name = "icons/actions/truncationExpand";
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.new(1, 0, 0, 0);
		})
		var15 = var15(View_upvr, tbl_4, tbl)
	else
		var15 = React_upvr.createElement
		local tbl_2 = {
			buttonType = ButtonType_upvr.Secondary;
			size = UDim2.new(1, 0, 1, 0);
			anchorPoint = Vector2.new(0.5, 0.5);
			position = UDim2.fromScale(0.5, 0.5);
		}
		local selectedValue_2 = arg1.selectedValue
		if not selectedValue_2 then
			selectedValue_2 = arg1.placeholderText
		end
		tbl_2.text = selectedValue_2
		tbl_2.inputIcon = Images_upvr["icons/actions/truncationExpand"]
		function tbl_2.onActivated() -- Line 64
			--[[ Upvalues[2]:
				[1]: ModalBasedSelectorDialogController_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			ModalBasedSelectorDialogController_upvr.mountModalSelector(arg1.viewportHeight, arg1.viewportWidth, arg1.selections, arg1.onSelect, function() -- Line 70
				--[[ Upvalues[1]:
					[1]: ModalBasedSelectorDialogController_upvr (copied, readonly)
				]]
				ModalBasedSelectorDialogController_upvr.unmountModalSelector()
			end)
		end
		var15 = var15(Button_upvr, tbl_2)
	end
	module.ControlButton = var15
	return React_upvr.createElement("Frame", module_2, module)
end