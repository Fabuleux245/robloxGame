-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:51
-- Luau version 6, Types version 3
-- Time taken: 0.003354 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local UIBlox = require(Parent_2.UIBlox)
local GetFFlagNavBarWhiteStudioIcon_upvr = require(Parent_2.SharedFlags).GetFFlagNavBarWhiteStudioIcon
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent_2.React)
local useRoactService_upvr = require(Parent_2.RobloxAppHooks).useRoactService
local AppEventIngestService_upvr = require(Parent_2.RoactServiceTags).AppEventIngestService
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local useEffectOnce_upvr = require(Parent_2.RoactUtils).Hooks.useEffectOnce
local Constants_upvr = require(Parent.Constants)
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local Promise_upvr = require(Parent_2.Promise)
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local CoreGui_upvr = game:GetService("CoreGui")
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_logo_studiologo_upvr = UIBlox.App.ImageSet.Images["icons/logo/studiologo"]
local Color3_fromRGB_result1_upvr = Color3.fromRGB(0, 159, 255)
return function(arg1) -- Line 41, Named "StudioCTAIcon"
	--[[ Upvalues[16]:
		[1]: GetFFlagNavBarWhiteStudioIcon_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useRoactService_upvr (readonly)
		[5]: AppEventIngestService_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: useEffectOnce_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: ControlState_upvr (readonly)
		[10]: Promise_upvr (readonly)
		[11]: TooltipOrientation_upvr (readonly)
		[12]: CoreGui_upvr (readonly)
		[13]: withTooltip_upvr (readonly)
		[14]: ImageSetLabel_upvr (readonly)
		[15]: icons_logo_studiologo_upvr (readonly)
		[16]: Color3_fromRGB_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local var20_upvw
	if GetFFlagNavBarWhiteStudioIcon_upvr then
		var20_upvw = useStyle_upvr().Theme
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		titleText = "CommonUI.Features.StudioCTA.Tooltip.Title";
		bodyText = "CommonUI.Features.StudioCTA.Tooltip.Body";
	})
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local var7_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	useEffectOnce_upvr(function() -- Line 58
		--[[ Upvalues[2]:
			[1]: var7_result1_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		var7_result1_upvr:setRBXEventStream(Constants_upvr.STUDIO_CTA_EVENT_CONTEXT, Constants_upvr.STUDIO_CTA_EVENT_NAME_MOUNT)
	end, {})
	if arg1.controlState == ControlState_upvr.Hover or arg1.controlState == ControlState_upvr.Selected then
		if not any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current = Promise_upvr.delay(0.4):andThenCall(function() -- Line 66
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr (readonly)
					[2]: any_useState_result2_upvr (readonly)
				]]
				any_useRef_result1_upvr.current = nil
				any_useState_result2_upvr(true)
			end)
			-- KONSTANTWARNING: GOTO [84] #65
		end
	else
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:cancel()
			any_useRef_result1_upvr.current = nil
		end
		if any_useState_result1 then
			any_useState_result2_upvr(false)
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 65. Error Block 13 start (CF ANALYSIS FAILED)
	do
		return withTooltip_upvr({
			headerText = useLocalization_upvr_result1.titleText;
			bodyText = useLocalization_upvr_result1.bodyText;
		}, {
			preferredOrientation = TooltipOrientation_upvr.Top;
			guiTarget = CoreGui_upvr;
			active = any_useState_result1;
			DisplayOrder = 10;
		}, function(arg1_2) -- Line 93
			--[[ Upvalues[6]:
				[1]: React_upvr (copied, readonly)
				[2]: ImageSetLabel_upvr (copied, readonly)
				[3]: icons_logo_studiologo_upvr (copied, readonly)
				[4]: GetFFlagNavBarWhiteStudioIcon_upvr (copied, readonly)
				[5]: var20_upvw (read and write)
				[6]: Color3_fromRGB_result1_upvr (copied, readonly)
			]]
			local module = {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
				Image = icons_logo_studiologo_upvr;
			}
			local Fit = Enum.ScaleType.Fit
			module.ScaleType = Fit
			if GetFFlagNavBarWhiteStudioIcon_upvr then
				Fit = var20_upvw.IconEmphasis.Color
			else
				Fit = Color3_fromRGB_result1_upvr
			end
			module.ImageColor3 = Fit
			module[React_upvr.Change.AbsoluteSize] = arg1_2
			module[React_upvr.Change.AbsolutePosition] = arg1_2
			return React_upvr.createElement(ImageSetLabel_upvr, module)
		end)
	end
	-- KONSTANTERROR: [84] 65. Error Block 13 end (CF ANALYSIS FAILED)
end