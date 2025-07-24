-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:13
-- Luau version 6, Types version 3
-- Time taken: 0.003269 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox.App.Constant.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return function(arg1) -- Line 26, Named "IDVErrorScreen"
	--[[ Upvalues[9]:
		[1]: useStyle_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PartialPageModal_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: IconSize_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: StyledTextLabel_upvr (readonly)
	]]
	local onClose_upvr = arg1.onClose
	local var3_result1 = useStyle_upvr()
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = arg1.errorTitle;
		screenSize = useSelector_upvr(function(arg1_2) -- Line 32
			return arg1_2.ScreenSize
		end);
		onCloseClicked = function() -- Line 39, Named "onCloseClicked"
			--[[ Upvalues[1]:
				[1]: onClose_upvr (readonly)
			]]
			onClose_upvr()
		end;
		bottomPadding = 20;
		buttonStackProps = {
			forcedFillDirection = Enum.FillDirection.Horizontal;
			buttonHeight = 48;
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					isDisabled = false;
					onActivated = function() -- Line 51, Named "onActivated"
						--[[ Upvalues[1]:
							[1]: onClose_upvr (readonly)
						]]
						onClose_upvr()
					end;
					text = arg1.buttonText;
				};
			}};
		};
	}, {
		ViewFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
		}, {
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 24);
				PaddingBottom = UDim.new(0, 24);
			});
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 20);
			});
			ImageIcon = React_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.new(0, IconSize_upvr.XXLarge, 0, IconSize_upvr.XXLarge);
				ScaleType = Enum.ScaleType.Fit;
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/graphic/error_xlarge"];
				ImageTransparency = var3_result1.Theme.SystemPrimaryDefault.Transparency;
			});
			ErrorText = React_upvr.createElement(StyledTextLabel_upvr, {
				text = arg1.errorDescription;
				fontStyle = var3_result1.Font.CaptionBody;
				colorStyle = var3_result1.Theme.TextEmphasis;
				size = UDim2.new(1, 0, 0, 0);
				lineHeight = 1;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Center;
				textYAlignment = Enum.TextYAlignment.Center;
				automaticSize = Enum.AutomaticSize.XY;
				layoutOrder = 2;
			});
		});
	})
end