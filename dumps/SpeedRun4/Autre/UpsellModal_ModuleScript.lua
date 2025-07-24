-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:25
-- Luau version 6, Types version 3
-- Time taken: 0.001704 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local React_upvr = require(Parent.React)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function UpsellModal(arg1) -- Line 25
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PartialPageModal_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	return React_upvr.createElement("ImageButton", {
		AutoButtonColor = false;
		Size = UDim2.new(1, 0, 1, 0);
		ImageTransparency = 1;
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, {
		Content = React_upvr.createElement(PartialPageModal_upvr, {
			title = arg1.titleText;
			screenSize = useScreenSize_upvr();
			onCloseClicked = arg1.onCloseModal;
			buttonStackProps = {
				forcedFillDirection = Enum.FillDirection.Horizontal;
				buttonHeight = useTokens_upvr_result1.Size.Size_1200;
				buttons = {{
					buttonType = ButtonType_upvr.Secondary;
					props = {
						isDisabled = false;
						onActivated = arg1.onCancelButtonClick;
						text = arg1.cancelButtonText;
					};
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						isDisabled = false;
						onActivated = arg1.onActionButtonClick;
						text = arg1.actionButtonText;
					};
				}};
			};
		}, {
			ViewFrame = React_upvr.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.XY;
				BackgroundTransparency = 1;
			}, {
				UIPadding = React_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
					PaddingBottom = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
				});
				Text = React_upvr.createElement(StyledTextLabel_upvr, {
					fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
					colorStyle = useTokens_upvr_result1.Color.Content.Emphasis;
					size = UDim2.new(1, 0, 0, 0);
					fluidSizing = false;
					textXAlignment = Enum.TextXAlignment.Left;
					textYAlignment = Enum.TextYAlignment.Center;
					automaticSize = Enum.AutomaticSize.Y;
					text = arg1.bodyText;
				});
			});
		});
	})
end
return UpsellModal