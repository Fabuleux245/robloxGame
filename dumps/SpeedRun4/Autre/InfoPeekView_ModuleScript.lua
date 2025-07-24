-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:12
-- Luau version 6, Types version 3
-- Time taken: 0.002071 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local PeekView = require(Parent.PeekView)
local useNavigationProps_upvr = require(Parent.RobloxAppNavigation).useNavigationProps
local React_upvr = require(Parent.React)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local PeekViewState_upvr = PeekView.PeekViewState
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local PeekView_2_upvr = PeekView.PeekView
return function(arg1) -- Line 25, Named "InfoPeekView"
	--[[ Upvalues[7]:
		[1]: useNavigationProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useNavigation_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: PeekViewState_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: PeekView_2_upvr (readonly)
	]]
	local useNavigationProps_upvr_result1 = useNavigationProps_upvr(function(arg1_2, arg2) -- Line 26
		return {
			title = arg2.title;
			body = arg2.body;
		}
	end)
	local var5_result1_upvr = useNavigation_upvr()
	local useTokens_upvr_result1 = useTokens_upvr()
	local title = arg1.title
	if not title then
		title = useNavigationProps_upvr_result1.title
	end
	local body = arg1.body
	if not body then
		body = useNavigationProps_upvr_result1.body
	end
	local HeadingSmall = useTokens_upvr_result1.Typography.HeadingSmall
	local Emphasis = useTokens_upvr_result1.Color.Content.Emphasis
	local BodyLarge = useTokens_upvr_result1.Typography.BodyLarge
	local Default = useTokens_upvr_result1.Color.Content.Default
	return React_upvr.createElement(PeekView_2_upvr, {
		briefViewContentHeight = UDim.new(0, 0);
		contentFrameRef = React_upvr.useRef(nil);
		hasScrim = true;
		mountAsFullView = true;
		returnToFullView = true;
		showDraggerInClosedState = false;
		thumbstickScrollEnabled = true;
		viewStateChanged = React_upvr.useCallback(function(arg1_3, arg2) -- Line 46
			--[[ Upvalues[2]:
				[1]: PeekViewState_upvr (copied, readonly)
				[2]: var5_result1_upvr (readonly)
			]]
			if arg1_3 == PeekViewState_upvr.Closed or arg1_3 == PeekViewState_upvr.Hidden then
				var5_result1_upvr.goBack()
			end
		end, dependencyArray_upvr(var5_result1_upvr));
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, useTokens_upvr_result1.Padding.Medium);
		});
		ContentPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
			PaddingLeft = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
			PaddingRight = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
			PaddingBottom = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
		});
		TitleText = React_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Text = title;
			Font = HeadingSmall.Font;
			TextSize = HeadingSmall.FontSize;
			TextColor3 = Emphasis.Color3;
			TextTransparency = Emphasis.Transparency;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 1;
		});
		BodyText = React_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Text = body;
			Font = BodyLarge.Font;
			TextSize = BodyLarge.FontSize;
			TextColor3 = Default.Color3;
			TextTransparency = Default.Transparency;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 2;
		});
	})
end