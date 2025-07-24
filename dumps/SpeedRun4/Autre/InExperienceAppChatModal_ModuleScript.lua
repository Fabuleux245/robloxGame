-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:11
-- Luau version 6, Types version 3
-- Time taken: 0.006146 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UIBlox = require(Parent.UIBlox)
local getFFlagAppChatInExperienceTabBarAdjustment_upvr = require(AppChat.Flags.getFFlagAppChatInExperienceTabBarAdjustment)
local getFFlagAppChatCoreUIConflictFix_upvr = require(Parent.SharedFlags).getFFlagAppChatCoreUIConflictFix
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr._new() -- Line 53
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		_visible = false;
		_wasVisible = false;
		visibilitySignal = Instance.new("BindableEvent");
		unreadCount = 0;
		unreadCountSignal = Instance.new("BindableEvent");
		currentSquadId = "";
		currentSquadIdSignal = Instance.new("BindableEvent");
		topMargin = 12;
	}
	setmetatable(module, module_upvr)
	return module
end
local Tokens_upvr = UIBlox.App.Style.Tokens
local Constants_upvr = UIBlox.App.Style.Constants
function module_upvr.initialize(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 69
	--[[ Upvalues[4]:
		[1]: Tokens_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getFFlagAppChatInExperienceTabBarAdjustment_upvr (readonly)
		[4]: getFFlagAppChatCoreUIConflictFix_upvr (readonly)
	]]
	if arg2 then
		arg1.topMargin = arg2
	end
	arg1.settingsHub = arg3
	arg1._foundationTokens = Tokens_upvr.getFoundationTokensDefaultScale(Constants_upvr.ThemeName.Dark)
	if getFFlagAppChatInExperienceTabBarAdjustment_upvr() then
		arg1.viewportUtil = arg4
	end
	if getFFlagAppChatCoreUIConflictFix_upvr() then
		arg1.chatSelector = arg5
		arg1.playerListManager = arg6
	end
end
local CoreGui_upvr = game:GetService("CoreGui")
local GuiService_upvr = game:GetService("GuiService")
local any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr = require(Parent.SharedFlags).getFFlagSettingsHubIndependentBackgroundVisibility()
function module_upvr.setVisible(arg1, arg2) -- Line 95
	--[[ Upvalues[5]:
		[1]: getFFlagAppChatCoreUIConflictFix_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: getFFlagAppChatInExperienceTabBarAdjustment_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr (readonly)
	]]
	if arg2 == arg1._visible then
	else
		arg1._visible = arg2
		arg1.visibilitySignal:Fire(arg2)
		if arg2 then
			if getFFlagAppChatCoreUIConflictFix_upvr() then
				if arg1.chatSelector then
					arg1.chatSelector:HideTemp("AppChat", true)
				end
				if arg1.playerListManager then
					arg1.playerListManager:HideTemp("AppChat", true)
				end
			end
			local ScreenGui_2 = Instance.new("ScreenGui")
			ScreenGui_2.DisplayOrder = game:DefineFastInt("AppChatInExperienceStandaloneContainerDisplayOrder", 4)
			ScreenGui_2.Parent = CoreGui_upvr
			ScreenGui_2.Name = "InExperienceAppChatModal"
			local UIPadding_upvr_2 = Instance.new("UIPadding")
			UIPadding_upvr_2.PaddingTop = UDim.new(0, arg1.topMargin)
			UIPadding_upvr_2.PaddingRight = UDim.new(0, 12)
			UIPadding_upvr_2.PaddingBottom = UDim.new(0, 0)
			UIPadding_upvr_2.PaddingLeft = UDim.new(0, 12)
			UIPadding_upvr_2.Parent = ScreenGui_2
			local UIListLayout_2 = Instance.new("UIListLayout")
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout_2.Parent = ScreenGui_2
			local ImageButton_2 = Instance.new("ImageButton")
			ImageButton_2.BorderSizePixel = 0
			ImageButton_2.AutoButtonColor = false
			ImageButton_2.Modal = true
			ImageButton_2.BackgroundTransparency = arg1._foundationTokens.Color.OverMedia.OverMedia_0.Transparency
			ImageButton_2.BackgroundColor3 = arg1._foundationTokens.Color.OverMedia.OverMedia_0.Color3
			ImageButton_2.Size = UDim2.fromScale(1, 1)
			ImageButton_2.Visible = true
			ImageButton_2.Parent = ScreenGui_2
			if getFFlagAppChatInExperienceTabBarAdjustment_upvr() and arg1.viewportUtil then
				local function var25() -- Line 142
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: UIPadding_upvr_2 (readonly)
						[3]: GuiService_upvr (copied, readonly)
					]]
					local any_get_result1 = arg1.viewportUtil.screenSize:get()
					if not any_get_result1 or not any_get_result1.X or not any_get_result1.Y then
					else
						if any_get_result1.X < any_get_result1.Y then
							UIPadding_upvr_2.PaddingBottom = UDim.new(0, 0)
							return
						end
						UIPadding_upvr_2.PaddingBottom = UDim.new(0, GuiService_upvr:GetSafeZoneOffsets().bottom)
					end
				end
				arg1.viewportUtil.screenSize:connect(var25)
				var25()
			end
			local UISizeConstraint = Instance.new("UISizeConstraint")
			UISizeConstraint.MaxSize = Vector2.new(850, 780)
			UISizeConstraint.Parent = ImageButton_2
			local UICorner_2 = Instance.new("UICorner")
			UICorner_2.CornerRadius = UDim.new(0, 8)
			UICorner_2.Parent = ImageButton_2
			arg1.frame = ImageButton_2
		else
			if arg1.frame then
				UIPadding_upvr_2 = arg1.frame
				if UIPadding_upvr_2.Parent then
					UIPadding_upvr_2 = arg1.frame
					UIPadding_upvr_2.Parent:Destroy()
					arg1.frame = nil
				end
			end
			if getFFlagAppChatCoreUIConflictFix_upvr() then
				if arg1.chatSelector then
					arg1.chatSelector:HideTemp("AppChat", false)
				end
				if arg1.playerListManager then
					arg1.playerListManager:HideTemp("AppChat", false)
				end
			end
		end
		if arg1.settingsHub and any_getFFlagSettingsHubIndependentBackgroundVisibility_result1_upvr then
			arg1.settingsHub:SetBackgroundVisibility(arg2, false)
		end
	end
end
function module_upvr.toggleVisibility(arg1) -- Line 195
	if arg1.default then
		arg1.default:setVisible(not arg1.default._visible)
	end
end
function module_upvr.getVisible(arg1) -- Line 203
	return arg1.default._visible
end
function module_upvr.setUnreadCount(arg1, arg2) -- Line 208
	arg1.default.unreadCount = arg2
	arg1.default.unreadCountSignal:Fire(arg2)
end
function module_upvr.setCurrentSquadId(arg1, arg2) -- Line 213
	arg1.default.currentSquadId = arg2
	arg1.default.currentSquadIdSignal:Fire(arg2)
end
module_upvr.default = module_upvr._new()
return module_upvr