-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:46
-- Luau version 6, Types version 3
-- Time taken: 0.002786 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Foundation_upvr = require(Parent.Foundation)
local Responsive_upvr = require(Parent.Responsive)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatTitleWideBreakpointMinWidth", 800)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("AppChatTitleWideBreakpointMinHeight", 0)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatConversationTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatConversationTelemetryLayer)
local React_upvr = require(Parent.React)
local ChatConversationTelemetryEvents_upvr = require(script.Parent.ChatConversationTelemetryEvents)
local ConversationFacePile_upvr = require(AppChat.Components.Cells.ConversationFacePile)
return function(arg1) -- Line 23
	--[[ Upvalues[10]:
		[1]: Responsive_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr_2 (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useTelemetry_upvr (readonly)
		[6]: ChatConversationTelemetryLayer_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: ChatConversationTelemetryEvents_upvr (readonly)
		[9]: Foundation_upvr (readonly)
		[10]: ConversationFacePile_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var16
	if Responsive_upvr.useResponsive({{
		Key = "wide";
		minWidth = game_DefineFastInt_result1_upvr;
		minHeight = game_DefineFastInt_result1_upvr_2;
	}}) ~= "wide" then
		var16 = false
	else
		var16 = true
	end
	local useTokens_upvr_result1 = useTokens_upvr()
	local useTelemetry_upvr_result1_upvr = useTelemetry_upvr(ChatConversationTelemetryLayer_upvr.Context)
	local module = {}
	local tbl = {
		onActivated = React_upvr.useCallback(function() -- Line 34
			--[[ Upvalues[3]:
				[1]: useTelemetry_upvr_result1_upvr (readonly)
				[2]: ChatConversationTelemetryEvents_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			useTelemetry_upvr_result1_upvr.emit(ChatConversationTelemetryEvents_upvr.ConversationInfoBtnClicked, {})
			arg1.navigateToChatDetails()
		end, {arg1.navigateToChatDetails, useTelemetry_upvr_result1_upvr});
	}
	if var16 then
		-- KONSTANTWARNING: GOTO [75] #56
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 55. Error Block 22 start (CF ANALYSIS FAILED)
	tbl.AutomaticSize = nil
	if not var16 then
	else
	end
	tbl.Size = UDim2.new(0, 0, 1, 0)
	tbl.Position = UDim2.new(0, 0, 0, 0)
	tbl.cornerRadius = UDim.new(0, useTokens_upvr_result1.Radius.Medium)
	tbl.padding = UDim.new(0, useTokens_upvr_result1.Padding.Small)
	module.TitleContainer = React_upvr.createElement(Foundation_upvr.View, tbl, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, useTokens_upvr_result1.Gap.Medium);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		ConversationFacePile = React_upvr.createElement(ConversationFacePile_upvr, {
			conversationId = arg1.conversationId;
		});
		Text = React_upvr.createElement(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			flexItem = {
				FlexMode = Enum.UIFlexMode.Fill;
			};
			fontStyle = useTokens_upvr_result1.Typography.TitleLarge;
			textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextWrapped = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 2;
			Text = arg1.titleText or "";
		});
	})
	do
		return React_upvr.createElement(Foundation_upvr.View, {
			Size = UDim2.new(1, 0, 1, 0);
		}, module)
	end
	-- KONSTANTERROR: [74] 55. Error Block 22 end (CF ANALYSIS FAILED)
end