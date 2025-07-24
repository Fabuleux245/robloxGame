-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:36
-- Luau version 6, Types version 3
-- Time taken: 0.008857 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Foundation = require(VirtualEvents.Parent.Foundation)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local GamePlayButton = require(VirtualEvents.Parent.GamePlayButton)
local useTokens_upvr = Foundation.Hooks.useTokens
local useExperienceSubtitle_upvr = require(VirtualEvents.Hooks.useExperienceSubtitle)
local useRoactService_upvr = require(VirtualEvents.Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(VirtualEvents.Parent.RoactServiceTags).RoactNetworking
local usePlayButtonState_upvr = GamePlayButton.usePlayButtonState
local PlayButtonStates_upvr = GamePlayButton.PlayButtonStates
local React_upvr = require(VirtualEvents.Parent.React)
local Text_upvr = Foundation.Text
local View_upvr = Foundation.View
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local FillBehavior_upvr = Foundation.Enums.FillBehavior
local ButtonSize_upvr = Foundation.Enums.ButtonSize
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 43, Named "EventActionBar"
	--[[ Upvalues[15]:
		[1]: useTokens_upvr (readonly)
		[2]: useExperienceSubtitle_upvr (readonly)
		[3]: useRoactService_upvr (readonly)
		[4]: RoactNetworking_upvr (readonly)
		[5]: usePlayButtonState_upvr (readonly)
		[6]: PlayButtonStates_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: View_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: ButtonVariant_upvr (readonly)
		[12]: FillBehavior_upvr (readonly)
		[13]: ButtonSize_upvr (readonly)
		[14]: ImageSetLabel_upvr (readonly)
		[15]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
	local useTokens_upvr_result1 = useTokens_upvr()
	local var21
	if arg1.universeId then
		var21 = useExperienceSubtitle_upvr(arg1.universeId)
	else
		var21 = nil
	end
	local var9_result1 = usePlayButtonState_upvr(useRoactService_upvr(RoactNetworking_upvr), arg1.universeId or "")
	if var9_result1.playButtonState ~= PlayButtonStates_upvr.Playable then
		if var9_result1.playButtonState ~= PlayButtonStates_upvr.PlayableWithParty then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 16);
		});
	}
	local tbl_7 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 12);
		});
		ExperienceThumbnail = React_upvr.createElement("ImageButton", {
			Active = true;
			Size = UDim2.fromOffset(40, 40);
			BorderSizePixel = 0;
			Image = "rbxthumb://type=GameIcon&id=%s&w=150&h=150":format(arg1.universeId);
			[React_upvr.Event.Activated] = arg1.onExperienceTileActivated;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
		});
	}
	local tbl_3 = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
		});
	}
	local tbl_4 = {
		LayoutOrder = 1;
	}
	if var21 then
		-- KONSTANTWARNING: GOTO [232] #166
	end
	-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [231] 165. Error Block 59 start (CF ANALYSIS FAILED)
	local var37
	tbl_4.Size = UDim2.fromScale(1, 1)
	tbl_4.Text = arg1.experienceName
	tbl_4.textStyle = useTokens_upvr_result1.Color.Content.Emphasis
	tbl_4.fontStyle = useTokens_upvr_result1.Typography.TitleLarge
	tbl_4.TextXAlignment = Enum.TextXAlignment.Left
	tbl_4.TextTruncate = Enum.TextTruncate.SplitWord
	tbl_4.TextWrapped = false
	tbl_3.ExperienceName = React_upvr.createElement(Text_upvr, tbl_4)
	if var21 then
		local _ = {
			LayoutOrder = 2;
			Size = UDim2.fromScale(1, 0.5);
			Text = var21;
			textStyle = useTokens_upvr_result1.Color.Content.Default;
			fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextTruncate = Enum.TextTruncate.None;
			TextWrapped = false;
		}
	else
	end
	tbl_3.ExperienceSubtitle = nil
	tbl_7.EventInfo = var37("Frame", {
		Size = UDim2.new(1, -52, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl_3)
	module.UpperContainer = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 40);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, tbl_7)
	if arg1.ctaProps.button then
		({
			LayoutOrder = 2;
			size = UDim2.new(1, 0, 0, 40);
		}).tag = {
			["row gap-small wrap auto-y size-full-0"] = true;
			["fill-x"] = true;
		}
		local tbl_5 = {}
		local tbl_2 = {
			text = arg1.ctaProps.button.text;
		}
		local var43 = ButtonVariant_upvr[arg1.ctaProps.button.variant]
		tbl_2.variant = var43
		if true then
			var43 = arg1.ctaProps.button.onActivated
		else
			var43 = function() -- Line 132
			end
		end
		tbl_2.onActivated = var43
		tbl_2.fillBehavior = FillBehavior_upvr.Fill
		tbl_2.size = ButtonSize_upvr.Medium
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.isDisabled = not true
		tbl_5.CTAButton = React_upvr.createElement(Button_upvr, tbl_2)
		if arg1.ctaProps.icon then
			local _ = {
				Size = UDim2.fromOffset(40, 40);
				BackgroundTransparency = 1;
			}
			local tbl_6 = {}
			local tbl = {}
			local Standard = ButtonVariant_upvr.Standard
			tbl.variant = Standard
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				Standard = arg1.ctaProps.icon.onActivated
			else
				Standard = function() -- Line 144
				end
			end
			tbl.onActivated = Standard
			tbl.fillBehavior = FillBehavior_upvr.Fill
			tbl.size = ButtonSize_upvr.Medium
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.isDisabled = not true
			tbl_6.ShareButton = React_upvr.createElement(Button_upvr, tbl)
			tbl_6.ShareIcon = React_upvr.createElement(ImageSetLabel_upvr, {
				ZIndex = 2;
				Size = UDim2.fromOffset(32, 32);
				Image = Images_upvr[arg1.ctaProps.icon.icon];
				BackgroundTransparency = 1;
				Position = UDim2.fromOffset(4, 4);
			})
		else
		end
		tbl_5.ShareButtonWrapper = nil
	else
	end
	module.LowerContianer = nil
	do
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, module)
	end
	-- KONSTANTERROR: [231] 165. Error Block 59 end (CF ANALYSIS FAILED)
end