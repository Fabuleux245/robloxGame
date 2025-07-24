-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:10
-- Luau version 6, Types version 3
-- Time taken: 0.005571 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
game:DefineFastInt("TooltipHitboxMinSize", 26)
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local GetFFlagTenFootUiSupportSortHeaderTooltip_upvr = require(Parent.SharedFlags).GetFFlagTenFootUiSupportSortHeaderTooltip
local FFlagLuaAppFixCursorHooks_upvr = require(Parent.SharedFlags).FFlagLuaAppFixCursorHooks
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local CoreGui_upvr = game:GetService("CoreGui")
local withHoverTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_actions_info_upvr = UIBlox.App.ImageSet.Images["icons/actions/info"]
local Interactable_upvr = UIBlox.Core.Control.Interactable
local vector2_upvr = Vector2.new(game:GetFastInt("TooltipHitboxMinSize"), game:GetFastInt("TooltipHitboxMinSize"))
return function(arg1) -- Line 41, Named "IconWithTooltip"
	--[[ Upvalues[13]:
		[1]: useUiModeInfo_upvr (readonly)
		[2]: useDesignTokens_upvr (readonly)
		[3]: GetFFlagTenFootUiSupportSortHeaderTooltip_upvr (readonly)
		[4]: FFlagLuaAppFixCursorHooks_upvr (readonly)
		[5]: useCursor_upvr (readonly)
		[6]: UiMode_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: withHoverTooltip_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: icons_actions_info_upvr (readonly)
		[12]: Interactable_upvr (readonly)
		[13]: vector2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useUiModeInfo_upvr_result1 = useUiModeInfo_upvr()
	local var4_result1 = useDesignTokens_upvr()
	local Space_300_2 = var4_result1.Global.Space_300
	local var39_upvw
	if GetFFlagTenFootUiSupportSortHeaderTooltip_upvr() then
		var39_upvw = var4_result1.Semantic.Radius.Circle
	end
	if FFlagLuaAppFixCursorHooks_upvr then
		if GetFFlagTenFootUiSupportSortHeaderTooltip_upvr() then
			-- KONSTANTWARNING: GOTO [52] #38
		end
	end
	if useUiModeInfo_upvr_result1.uiMode ~= UiMode_upvr.VR then
	else
	end
	if useUiModeInfo_upvr_result1.uiMode == UiMode_upvr.VR and not arg1.supportVR then
		return nil
	end
	if useUiModeInfo_upvr_result1.uiMode == UiMode_upvr.TenFoot and not arg1.supportTenFootUi then
		return nil
	end
	local size_upvr = arg1.size
	if not size_upvr then
		size_upvr = UDim2.new(0, Space_300_2, 0, Space_300_2)
	end
	local var44_upvr
	local Inset_upvw_2 = var4_result1.Semantic.Offset.Focus.Inset
	local Color3_upvr_2 = var4_result1.Semantic.Color.Text.Emphasis.Color3
	return withHoverTooltip_upvr({
		bodyText = arg1.hoverText;
		useLargeDropShadow = true;
	}, {
		preferredOrientation = arg1.tooltipOrientation;
		guiTarget = CoreGui_upvr;
		DisplayOrder = 10;
		delayTime = 0.2;
		triggerPointName = arg1.triggerPointName;
		disabled = true;
	}, function(arg1_3, arg2) -- Line 80
		--[[ Upvalues[14]:
			[1]: React_upvr (copied, readonly)
			[2]: size_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: FFlagLuaAppFixCursorHooks_upvr (copied, readonly)
			[5]: GetFFlagTenFootUiSupportSortHeaderTooltip_upvr (copied, readonly)
			[6]: var44_upvr (readonly)
			[7]: useCursor_upvr (copied, readonly)
			[8]: var39_upvw (read and write)
			[9]: Inset_upvw_2 (read and write)
			[10]: ImageSetLabel_upvr (copied, readonly)
			[11]: icons_actions_info_upvr (copied, readonly)
			[12]: Color3_upvr_2 (readonly)
			[13]: Interactable_upvr (copied, readonly)
			[14]: vector2_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local module = {
			Size = size_upvr;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.layoutOrder;
			AnchorPoint = arg1.anchorPoint;
			Position = arg1.position;
		}
		local var48
		if FFlagLuaAppFixCursorHooks_upvr and GetFFlagTenFootUiSupportSortHeaderTooltip_upvr() then
			var48 = var44_upvr
			-- KONSTANTWARNING: GOTO [47] #37
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 25. Error Block 21 start (CF ANALYSIS FAILED)
		if GetFFlagTenFootUiSupportSortHeaderTooltip_upvr() then
			var48 = useCursor_upvr(UDim.new(0, var39_upvw), Inset_upvw_2)
		else
			var48 = nil
		end
		module.SelectionImageObject = var48
		var48 = React_upvr.Change.AbsolutePosition
		module[var48] = arg1_3
		var48 = React_upvr.Change.AbsoluteSize
		module[var48] = arg1_3
		var48 = {}
		local tbl_4 = {
			Size = size_upvr;
			BackgroundTransparency = 1;
		}
		local icon = arg1.icon
		if not icon then
			icon = icons_actions_info_upvr
		end
		tbl_4.Image = icon
		icon = arg1.color
		local var51 = icon
		if not var51 then
			var51 = Color3_upvr_2
		end
		tbl_4.ImageColor3 = var51
		tbl_4.ZIndex = 0
		var48.TooltipIcon = React_upvr.createElement(ImageSetLabel_upvr, tbl_4)
		local tbl_5 = {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
		}
		tbl_5.onStateChanged = arg2
		tbl_5[React_upvr.Event.Activated] = arg1.onActivateTooltip
		tbl_5.ZIndex = 1
		var48.Hitbox = React_upvr.createElement(Interactable_upvr, tbl_5, {
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MinSize = vector2_upvr;
			});
		})
		do
			return React_upvr.createElement("Frame", module, var48)
		end
		-- KONSTANTERROR: [34] 25. Error Block 21 end (CF ANALYSIS FAILED)
	end)
end