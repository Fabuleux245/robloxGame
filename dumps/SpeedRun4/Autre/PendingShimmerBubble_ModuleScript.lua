-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:50
-- Luau version 6, Types version 3
-- Time taken: 0.006335 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_4_upvr = {
	addTopPadding = false;
	addBottomPadding = false;
	backgroundTransparency = 0.4;
	heightFactor = 1;
	isIncoming = false;
	showAvatarCircle = false;
	widthPercentage = 0.5;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local React_upvr = require(Parent.React)
return function(arg1) -- Line 41, Named "PendingShimmerBubble"
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[5]: useChatPagePadding_upvr (readonly)
		[6]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_4_upvr, arg1)
	local var10 = any_join_result1.style or useStyle_upvr()
	local Global = var10.Tokens.Global
	local Space_100 = Global.Space_100
	local var13
	if any_join_result1.addBottomPadding then
		Global = var10.Tokens.Global.Space_300
	else
		Global = var10.Tokens.Global.Space_50
	end
	var13 = var10.Tokens
	local Size_450 = var13.Global.Size_450
	var13 = var10.Theme.UIDefault
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		var13 = useChatPagePadding_upvr()
	else
		var13 = {}
		var13.left = Space_100
		var13.right = Space_100
	end
	local module = {}
	local tbl_5 = {
		FillDirection = Enum.FillDirection.Horizontal;
	}
	if any_join_result1.isIncoming then
	else
	end
	tbl_5.HorizontalAlignment = Enum.HorizontalAlignment.Right
	tbl_5.SortOrder = Enum.SortOrder.LayoutOrder
	tbl_5.VerticalAlignment = Enum.VerticalAlignment.Bottom
	tbl_5.Padding = UDim.new(0, var10.Tokens.Global.Space_50)
	module.UIListLayout = React_upvr.createElement("UIListLayout", tbl_5)
	local tbl = {}
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [140] #93
	end
	tbl.PaddingLeft = UDim.new(0, Space_100)
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [153] #103
	end
	tbl.PaddingRight = UDim.new(0, Space_100)
	tbl.PaddingBottom = UDim.new(0, Global)
	if any_join_result1.addTopPadding then
	else
	end
	tbl.PaddingTop = nil
	module.ContentPadding = React_upvr.createElement("UIPadding", tbl)
	if any_join_result1.isIncoming then
		local tbl_3 = {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}
		local var20 = 0
		tbl_3.Size = UDim2.new(var20, Size_450, 0, Size_450)
		tbl_3.LayoutOrder = 1
		if any_join_result1.showAvatarCircle then
			var20 = React_upvr.createElement
			var20 = var20("Frame", {
				BackgroundTransparency = any_join_result1.backgroundTransparency;
				BackgroundColor3 = var13.Color;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
				LayoutOrder = 1;
			}, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(1, var10.Tokens.Semantic.Radius.Circle);
				});
			})
		else
			var20 = nil
		end
		;({}).AvatarCircleShimmer = var20
	else
	end
	module.IncomingFrame = nil
	local tbl_2 = {
		BackgroundTransparency = any_join_result1.backgroundTransparency;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.BackgroundColor3 = var13.Color
	tbl_2.BorderSizePixel = 0
	tbl_2.Size = UDim2.new(any_join_result1.widthPercentage, 0, 0, any_join_result1.heightFactor * var10.Tokens.Global.Size_250 + var10.Tokens.Global.Size_200)
	tbl_2.LayoutOrder = 2
	module.ShimmerBubble = React_upvr.createElement("Frame", tbl_2, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, var10.Tokens.Semantic.Radius.Large);
		});
		UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(800 * any_join_result1.widthPercentage, 1000);
		});
	})
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module)
end