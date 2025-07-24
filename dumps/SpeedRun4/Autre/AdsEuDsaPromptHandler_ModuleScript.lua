-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:46
-- Luau version 6, Types version 3
-- Time taken: 0.007353 seconds

local AdService_upvr = game:GetService("AdService")
local GuiService_upvr = game:GetService("GuiService")
local TweenService_upvr = game:GetService("TweenService")
local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local Flags = require(script.Parent.Flags)
local any_GetFIntAdsEudsaModalAnimationTimeMs_result1_upvr = Flags.GetFIntAdsEudsaModalAnimationTimeMs()
local any_GetFFlagAdsEudsaModalUseAnimationTimeFlag_result1_upvr = Flags.GetFFlagAdsEudsaModalUseAnimationTimeFlag()
local any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr = Flags.GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt()
local RobloxTranslator_upvr = require(Parent.RobloxTranslator)
local function getBodyText_upvr(arg1, arg2) -- Line 22, Named "getBodyText"
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	if arg1 ~= "" and arg2 == "" then
		local module_4 = {}
		module_4.AdvertiserName = arg1
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Label.InExperienceDisclosureDynamic", module_4)
	end
	if arg1 ~= "" and arg2 ~= "" then
		local module_2 = {}
		module_2.AdvertiserName = arg1
		module_2.PayerName = arg2
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Label.InExperienceDisclosureDynamicWithPayer", module_2)
	end
	return RobloxTranslator_upvr:FormatByKey("CoreScripts.Ads.Label.InExperienceDisclosureStatic")
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("AdsEuDsaPromptHandler")
function any_extend_result1.init(arg1) -- Line 39
	--[[ Upvalues[4]:
		[1]: any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AdService_upvr (readonly)
		[4]: getBodyText_upvr (readonly)
	]]
	arg1:setState({
		enabled = false;
	})
	if not any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr then
		arg1.animating = false
		arg1.canvasGroupRef = Roact_upvr.createRef()
	end
	arg1.savedSelectedCoreObject = nil
	arg1:setState({
		bodyText = "";
	})
	AdService_upvr.ShowDynamicEudsaDisclosure:Connect(function(arg1_2, arg2) -- Line 53
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: getBodyText_upvr (copied, readonly)
		]]
		arg1:setState({
			bodyText = getBodyText_upvr(arg1_2, arg2);
		})
		arg1:showPrompt()
	end)
end
function any_extend_result1.saveSelectedObject(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	arg1.savedSelectedCoreObject = GuiService_upvr.SelectedCoreObject
	GuiService_upvr.SelectedCoreObject = nil
end
local CoreGui_upvr = game:GetService("CoreGui")
function any_extend_result1.restoreSelectedObject(arg1) -- Line 66
	--[[ Upvalues[2]:
		[1]: CoreGui_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if arg1.savedSelectedCoreObject == nil or arg1.savedSelectedCoreObject:IsDescendantOf(CoreGui_upvr) then
		GuiService_upvr.SelectedCoreObject = arg1.savedSelectedCoreObject
	end
end
function any_extend_result1.showPrompt(arg1) -- Line 73
	--[[ Upvalues[4]:
		[1]: any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: any_GetFFlagAdsEudsaModalUseAnimationTimeFlag_result1_upvr (readonly)
		[4]: any_GetFIntAdsEudsaModalAnimationTimeMs_result1_upvr (readonly)
	]]
	local var19
	if not any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr and (arg1.animating or not arg1.canvasGroupRef.current) then
	else
		arg1:saveSelectedObject()
		arg1:setState({
			enabled = true;
		})
		if not any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr then
			arg1.animating = true
			if any_GetFFlagAdsEudsaModalUseAnimationTimeFlag_result1_upvr then
				var19 = any_GetFIntAdsEudsaModalAnimationTimeMs_result1_upvr / 1000
			else
				var19 = 1
			end
			var19 = {}
			var19.GroupTransparency = 0
			local any_Create_result1 = TweenService_upvr:Create(arg1.canvasGroupRef.current, TweenInfo.new(var19, Enum.EasingStyle.Linear), var19)
			any_Create_result1:Play()
			any_Create_result1.Completed:Connect(function() -- Line 94
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.animating = false
			end)
		end
	end
end
function any_extend_result1.hidePrompt(arg1) -- Line 100
	--[[ Upvalues[5]:
		[1]: any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr (readonly)
		[2]: AdService_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: any_GetFFlagAdsEudsaModalUseAnimationTimeFlag_result1_upvr (readonly)
		[5]: any_GetFIntAdsEudsaModalAnimationTimeMs_result1_upvr (readonly)
	]]
	local var23
	if any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr then
		arg1:setState({
			enabled = false;
		})
		AdService_upvr:HideEudsaDisclosure()
		arg1:restoreSelectedObject()
	else
		if arg1.animating or not arg1.canvasGroupRef.current then return end
		arg1.animating = true
		if any_GetFFlagAdsEudsaModalUseAnimationTimeFlag_result1_upvr then
			var23 = any_GetFIntAdsEudsaModalAnimationTimeMs_result1_upvr / 1000
		else
			var23 = 1
		end
		var23 = {}
		var23.GroupTransparency = 1
		local any_Create_result1_2 = TweenService_upvr:Create(arg1.canvasGroupRef.current, TweenInfo.new(var23, Enum.EasingStyle.Linear), var23)
		any_Create_result1_2:Play()
		any_Create_result1_2.Completed:Connect(function() -- Line 121
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AdService_upvr (copied, readonly)
			]]
			arg1.animating = false
			arg1:setState({
				enabled = false;
			})
			AdService_upvr:HideEudsaDisclosure()
			arg1:restoreSelectedObject()
		end)
	end
end
local UIBlox_upvr = require(Parent.UIBlox)
local AdsEuDsaPromptUI_upvr = require(script.Parent.AdsEuDsaPromptUI)
local GetFFlagFixMouseForAdsEuDsaModal_upvr = Flags.GetFFlagFixMouseForAdsEuDsaModal
function any_extend_result1.render(arg1) -- Line 132
	--[[ Upvalues[5]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AdsEuDsaPromptUI_upvr (readonly)
		[4]: any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr (readonly)
		[5]: GetFFlagFixMouseForAdsEuDsaModal_upvr (readonly)
	]]
	local AppStyleProvider = UIBlox_upvr.App.Style.AppStyleProvider
	local Constants = UIBlox_upvr.App.Style.Constants
	local tbl_3 = {
		Dark = {
			themeName = Constants.ThemeName.Dark;
			fontName = Constants.FontName.Gotham;
		};
	}
	local tbl = {}
	tbl.handler = arg1
	tbl.bodyText = arg1.state.bodyText
	local any_createElement_result1 = Roact_upvr.createElement(AdsEuDsaPromptUI_upvr, tbl)
	if any_GetFFlagRemoveCanvasGroupFromAdsEudsaPrompt_result1_upvr then
		local module = {}
		local tbl_2 = {
			Prompt = any_createElement_result1;
		}
		local var30_result1 = GetFFlagFixMouseForAdsEuDsaModal_upvr()
		if var30_result1 then
			var30_result1 = Roact_upvr.createElement
			var30_result1 = var30_result1("ImageButton", {
				BackgroundTransparency = 0;
				Modal = true;
				Size = UDim2.new(0, 0, 0, 0);
			})
		end
		tbl_2.ModalFix = var30_result1
		module.Frame = Roact_upvr.createElement("Frame", {
			Selectable = false;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
		}, tbl_2)
		return Roact_upvr.createElement("ScreenGui", {
			ResetOnSpawn = false;
			IgnoreGuiInset = true;
			DisplayOrder = 15;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			AutoLocalize = false;
			Enabled = arg1.state.enabled;
		}, Roact_upvr.createElement(AppStyleProvider, {
			style = tbl_3.Dark;
		}, module))
	end
	local module_3 = {}
	local tbl_4 = {
		Prompt = any_createElement_result1;
	}
	local var30_result1_2 = GetFFlagFixMouseForAdsEuDsaModal_upvr()
	if var30_result1_2 then
		var30_result1_2 = Roact_upvr.createElement
		var30_result1_2 = var30_result1_2("ImageButton", {
			BackgroundTransparency = 0;
			Modal = true;
			Size = UDim2.new(0, 0, 0, 0);
		})
	end
	tbl_4.ModalFix = var30_result1_2
	module_3.CanvasGroup = Roact_upvr.createElement("CanvasGroup", {
		[Roact_upvr.Ref] = arg1.canvasGroupRef;
		Selectable = false;
		GroupTransparency = 1;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}, tbl_4)
	return Roact_upvr.createElement("ScreenGui", {
		ResetOnSpawn = false;
		IgnoreGuiInset = true;
		DisplayOrder = 15;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		Enabled = arg1.state.enabled;
	}, Roact_upvr.createElement(AppStyleProvider, {
		style = tbl_3.Dark;
	}, module_3))
end
return any_extend_result1