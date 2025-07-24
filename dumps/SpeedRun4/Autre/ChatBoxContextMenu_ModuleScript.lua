-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:15
-- Luau version 6, Types version 3
-- Time taken: 0.002368 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	motorCallback = require(Parent.Otter).instant;
	open = {
		targetValue = 1;
	};
	close = {
		targetValue = 0;
	};
}
local tbl_2_upvr = {
	reportAbuse = "Feature.ReportAbuse.Action.EnterChatLineReporting";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local CurrentCamera_upvr = game.Workspace.CurrentCamera
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local React_upvr = require(Parent.React)
local ContextualMenu_upvr = UIBlox.App.Menu.ContextualMenu
local Images_upvr = UIBlox.App.ImageSet.Images
local ChatLineReportRoot_upvr = require(ChatLineReporting.Components.ChatLineReportRoot)
local GetFFlagMemoizeChatReportingMenu_upvr = require(Parent.SharedFlags).GetFFlagMemoizeChatReportingMenu
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
return function(arg1) -- Line 31
	--[[ Upvalues[11]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ContextualMenu_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: ChatLineReportRoot_upvr (readonly)
		[9]: GetFFlagMemoizeChatReportingMenu_upvr (readonly)
		[10]: MenuDirection_upvr (readonly)
		[11]: tbl_upvr (readonly)
	]]
	local var18_upvr = tbl_2_upvr
	if CurrentCamera_upvr then
		var18_upvr = CurrentCamera_upvr.ViewportSize
	else
		var18_upvr = Vector2.new(Constants_upvr.ViewportSize, Constants_upvr.ViewportSize)
	end
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 38
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: var18_upvr (readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current and var18_upvr.X < any_useRef_result1_upvr.current.AbsolutePosition.X + any_useRef_result1_upvr.current.AbsoluteSize.X then
			any_useRef_result1_upvr.current.AnchorPoint = Vector2.new(1, 0)
			any_useRef_result1_upvr.current.Position = UDim2.new(1, Constants_upvr.FramePositionXOffsetLeft, 0, Constants_upvr.FramePositionYOffset)
		end
	end, {any_useRef_result1_upvr, var18_upvr})
	local module = {}
	local tbl = {
		buttonProps = {{
			icon = Images_upvr["icons/actions/feedback"];
			text = useLocalization_upvr(var18_upvr).reportAbuse;
			onActivated = function() -- Line 64, Named "onActivated"
				--[[ Upvalues[3]:
					[1]: ChatLineReportRoot_upvr (copied, readonly)
					[2]: GetFFlagMemoizeChatReportingMenu_upvr (copied, readonly)
					[3]: arg1 (readonly)
				]]
				local var28 = ChatLineReportRoot_upvr
				if GetFFlagMemoizeChatReportingMenu_upvr() then
					var28 = arg1.getMessages()
				else
					var28 = arg1.messages
				end
				var28.initialize(var28)
				arg1.setContextMenuOpen(false)
				arg1.onUnfocus()
			end;
		}};
		elementHeight = Constants_upvr.TopBannerSize;
		closeBackgroundVisible = false;
		open = true;
		menuDirection = MenuDirection_upvr.Down;
		horizontalAlignment = Enum.HorizontalAlignment.Left;
		openPositionX = UDim.new(0, 0);
		openPositionY = UDim.new(0, 0);
		borderCornerRadius = Constants_upvr.ContextualMenuBorderRadius;
		motorOverrideOptions = tbl_upvr;
		background = {
			Transparency = arg1.backgroundTransparency;
			Color = arg1.backgroundColor3;
		};
		screenSize = var18_upvr;
	}
	function tbl.onDismiss() -- Line 48
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.setContextMenuOpen(false)
		arg1.onUnfocus()
	end
	module.ContextualMenu = React_upvr.createElement(ContextualMenu_upvr, tbl)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(Constants_upvr.FrameSizeXScale, Constants_upvr.FrameSizeXOffset, 1, 0);
		Position = UDim2.new(1, Constants_upvr.FramePositionXOffset, 0, Constants_upvr.FramePositionYOffset);
		BackgroundTransparency = 1;
		ref = any_useRef_result1_upvr;
	}, module)
end