-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:44
-- Luau version 6, Types version 3
-- Time taken: 0.005002 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local useDispatch_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch
local useScreenSize_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Common.Hooks.useScreenSize)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local CloseOverlay_upvr = require(script.Parent.Parent.Actions.CloseOverlay)
local ExperienceService_upvr = require(CorePackages.Workspace.Packages.ExperienceService).ExperienceService
local useSelector_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 31, Named "AttributionTraversal"
	--[[ Upvalues[12]:
		[1]: useDispatch_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: CloseOverlay_upvr (readonly)
		[6]: ExperienceService_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: InteractiveAlert_upvr (readonly)
		[9]: RobloxTranslator_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
		[12]: ButtonType_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var5_result1_upvr = useStyle_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 49
		return arg1_2.locale
	end)
	local module = {
		title = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Attribution.GoToExperience", useSelector_upvr_result1_upvr);
	}
	local Theme_upvr = var5_result1_upvr.Theme
	local var26_upvr = arg1.name or ""
	local Font_upvr = var5_result1_upvr.Font
	function module.middleContent() -- Line 59
		--[[ Upvalues[10]:
			[1]: React_upvr (copied, readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: Theme_upvr (readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: StyledTextLabel_upvr (copied, readonly)
			[7]: RobloxTranslator_upvr (copied, readonly)
			[8]: useSelector_upvr_result1_upvr (readonly)
			[9]: var26_upvr (readonly)
			[10]: Font_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, var5_result1_upvr.Tokens.Global.Space_150);
			});
			ExperienceThumbnailFrame = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(150, 150);
				BackgroundColor3 = Theme_upvr.BackgroundContrast.Color;
				BorderSizePixel = 0;
				LayoutOrder = 1;
				ClipsDescendants = true;
			}, {
				ExperienceThumbnail = React_upvr.createElement(ImageSetLabel_upvr, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Image = string.format("rbxthumb://type=GameIcon&id=%s&w=%d&h=%d", tostring(arg1.universeId), 150, 150);
					Size = UDim2.fromScale(1, 1);
					BorderSizePixel = 0;
					BackgroundTransparency = 1;
				}, {
					RoundCorner = React_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, var5_result1_upvr.Tokens.Semantic.Radius.Medium);
					});
				});
			});
			BodyText = React_upvr.createElement(StyledTextLabel_upvr, {
				text = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Attribution.GoToDescription", useSelector_upvr_result1_upvr, {
					EXPERIENCE_NAME = var26_upvr;
				});
				fontStyle = Font_upvr.Body;
				colorStyle = Theme_upvr.TextDefault;
				layoutOrder = 2;
				automaticSize = Enum.AutomaticSize.Y;
				size = UDim2.fromScale(1, 0);
				textXAlignment = Enum.TextXAlignment.Center;
				lineHeight = 1;
			});
		})
	end
	module.buttonStackInfo = {
		buttons = {{
			props = {
				onActivated = React_upvr.useCallback(function() -- Line 36
					--[[ Upvalues[2]:
						[1]: useDispatch_upvr_result1_upvr (readonly)
						[2]: CloseOverlay_upvr (copied, readonly)
					]]
					useDispatch_upvr_result1_upvr(CloseOverlay_upvr())
				end, {useDispatch_upvr_result1_upvr});
				text = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Action.Cancel", useSelector_upvr_result1_upvr);
				layoutOrder = 0;
			};
			isDefaultChild = true;
		}, {
			buttonType = ButtonType_upvr.PrimaryContextual;
			props = {
				onActivated = React_upvr.useCallback(function() -- Line 40
					--[[ Upvalues[4]:
						[1]: arg1 (readonly)
						[2]: ExperienceService_upvr (copied, readonly)
						[3]: useDispatch_upvr_result1_upvr (readonly)
						[4]: CloseOverlay_upvr (copied, readonly)
					]]
					ExperienceService_upvr:LaunchExperience({
						placeId = arg1.rootPlaceId;
					})
					useDispatch_upvr_result1_upvr(CloseOverlay_upvr())
				end, {useDispatch_upvr_result1_upvr, arg1.rootPlaceId});
				text = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Action.Go", useSelector_upvr_result1_upvr);
				layoutOrder = 2;
			};
			isDefaultChild = false;
		}};
	}
	module.isMiddleContentFocusable = false
	module.screenSize = useScreenSize_upvr()
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end