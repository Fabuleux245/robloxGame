-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:19
-- Luau version 6, Types version 3
-- Time taken: 0.002436 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local React_upvr = require(Parent.React)
local GetFFlagMemoizeChatReportingMenu_upvr = require(Parent.SharedFlags).GetFFlagMemoizeChatReportingMenu
local UIBlox = require(Parent.UIBlox)
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local Constants_upvr = require(Parent.ChatLineReporting).Constants
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local getFFlagChatWindowUseCallbackOptimizations_upvr = require(ExpChat.Flags.getFFlagChatWindowUseCallbackOptimizations)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local ChatBoxContextMenu_upvr = require(Parent.ChatLineReporting).ChatBoxContextMenu
local function var6(arg1) -- Line 20
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: Localization_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: IconButton_upvr (readonly)
		[6]: Images_upvr (readonly)
		[7]: getFFlagChatWindowUseCallbackOptimizations_upvr (readonly)
		[8]: LocalizationProvider_upvr (readonly)
		[9]: ChatBoxContextMenu_upvr (readonly)
		[10]: GetFFlagMemoizeChatReportingMenu_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local module = {}
	local tbl_3 = {
		size = UDim2.new(0, Constants_upvr.IconButtonSize, 0, Constants_upvr.IconButtonSize);
		position = UDim2.new(1, Constants_upvr.IconButtonPositionXOffset, 0, Constants_upvr.IconButtonPositionYOffset);
		icon = Images_upvr["icons/menu/more_off"];
		showBackground = true;
		backgroundTransparency = 1;
	}
	local iconTransparency = arg1.iconTransparency
	tbl_3.iconTransparency = iconTransparency
	local var21
	if getFFlagChatWindowUseCallbackOptimizations_upvr() then
		iconTransparency = React_upvr.useCallback
		local tbl = {}
		var21 = arg1.onFocus
		tbl[1] = any_useState_result2_upvr
		tbl[2] = var21
		iconTransparency = iconTransparency(function() -- Line 41
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			any_useState_result2_upvr(true)
			arg1.onFocus()
		end, tbl)
	else
		iconTransparency = function() -- Line 45
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			any_useState_result2_upvr(true)
			arg1.onFocus()
		end
	end
	tbl_3.onActivated = iconTransparency
	module.DotMenu = React_upvr.createElement(IconButton_upvr, tbl_3)
	local tbl_2 = {}
	if any_useState_result1 then
		local tbl_4 = {
			setContextMenuOpen = any_useState_result2_upvr;
		}
		var21 = arg1.backgroundColor3
		tbl_4.backgroundColor3 = var21
		var21 = arg1.backgroundTransparency
		tbl_4.backgroundTransparency = var21
		var21 = arg1.onUnfocus
		tbl_4.onUnfocus = var21
		if GetFFlagMemoizeChatReportingMenu_upvr() then
			var21 = arg1.getMessages
		else
			var21 = nil
		end
		tbl_4.getMessages = var21
		if not GetFFlagMemoizeChatReportingMenu_upvr() then
		else
		end
		tbl_4.messages = nil
	else
	end
	tbl_2.ContextMenu = nil
	module.LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, tbl_2)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants_upvr.TopBannerSize);
		BackgroundTransparency = 1;
	}, module)
end
if GetFFlagMemoizeChatReportingMenu_upvr() then
	return React_upvr.memo(var6)
end
return var6