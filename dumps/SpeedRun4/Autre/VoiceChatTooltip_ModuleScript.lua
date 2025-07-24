-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:44
-- Luau version 6, Types version 3
-- Time taken: 0.003692 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local GuiService_upvr = game:GetService("GuiService")
local FIntVoiceChatTooltipDelay_upvr = require(RobloxGui.Modules.Flags.FIntVoiceChatTooltipDelay)
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)
local TopBarHeight_upvr = require(RobloxGui.Modules.TopBar.Constants).TopBarHeight
local Roact_upvr = require(CorePackages.Packages.Roact)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
return function(arg1) -- Line 32, Named "VoiceChatTooltip"
	--[[ Upvalues[12]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: FIntVoiceChatTooltipDelay_upvr (readonly)
		[5]: Utility_upvr (readonly)
		[6]: GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr (readonly)
		[7]: TopBarHeight_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: StyledTextLabel_upvr (readonly)
		[10]: CoreGui_upvr (readonly)
		[11]: TooltipOrientation_upvr (readonly)
		[12]: withTooltip_upvr (readonly)
	]]
	local var5_result1_upvr = useStyle_upvr()
	local onClose_upvr = arg1.onClose
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local function var18() -- Line 38
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: onClose_upvr (readonly)
			[5]: FIntVoiceChatTooltipDelay_upvr (copied, readonly)
		]]
		if arg1.showPrompt then
			any_useRef_result1_upvr.current = GuiService_upvr.MenuOpened:Connect(function() -- Line 40
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: onClose_upvr (copied, readonly)
				]]
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:Disconnect()
					any_useRef_result1_upvr.current = nil
					onClose_upvr()
				end
			end)
			task.delay(FIntVoiceChatTooltipDelay_upvr, function() -- Line 47
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: onClose_upvr (copied, readonly)
				]]
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:Disconnect()
					any_useRef_result1_upvr.current = nil
				end
				if arg1.showPrompt then
					onClose_upvr()
				end
			end)
		end
		return function() -- Line 58
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:Disconnect()
				any_useRef_result1_upvr.current = nil
			end
		end
	end
	local tbl_upvr = {arg1.showPrompt}
	React_upvr.useEffect(var18, tbl_upvr)
	var18 = 38
	local var24_upvw
	if Utility_upvr:IsSmallTouchScreen() then
		tbl_upvr = 64
	else
		tbl_upvr = 64
	end
	if GetFFlagEnableConnectDisconnectInSettingsAndChrome_upvr() then
		var24_upvw = TopBarHeight_upvr
	end
	return withTooltip_upvr({
		headerText = arg1.titleText;
		minContentWidth = 240;
		renderCustomComponents = function(arg1_2) -- Line 79, Named "renderCustomComponents"
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: StyledTextLabel_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: var5_result1_upvr (readonly)
			]]
			return Roact_upvr.createElement(StyledTextLabel_upvr, {
				text = arg1.subtitleText;
				textTruncate = Enum.TextTruncate.None;
				textXAlignment = Enum.TextXAlignment.Left;
				fontStyle = var5_result1_upvr.Font.CaptionSmall;
				colorStyle = var5_result1_upvr.Theme.TextDefault;
				layoutOrder = 0;
				automaticSize = Enum.AutomaticSize.XY;
			})
		end;
		onClose = onClose_upvr;
		backgroundColor = var5_result1_upvr.Theme.BackgroundUIDefault.Color;
		backgroundTransparency = var5_result1_upvr.Theme.BackgroundUIDefault.Transparency;
	}, {
		guiTarget = CoreGui_upvr;
		active = arg1.showPrompt;
		DisplayOrder = 10;
		preferredOrientation = TooltipOrientation_upvr.Bottom;
	}, function(arg1_3) -- Line 102
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: var24_upvw (read and write)
			[4]: React_upvr (copied, readonly)
		]]
		local module = {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, tbl_upvr, 0, var24_upvw);
		}
		module[React_upvr.Change.AbsoluteSize] = arg1_3
		module[React_upvr.Change.AbsolutePosition] = arg1_3
		return Roact_upvr.createElement("Frame", module)
	end)
end