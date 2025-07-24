-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:51
-- Luau version 6, Types version 3
-- Time taken: 0.001974 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	itemList = {{
		addBottomPadding = true;
		heightFactor = 1;
		isIncoming = true;
		showAvatarCircle = true;
		widthPercentage = 0.5;
	}, {
		addBottomPadding = false;
		heightFactor = 1;
		isIncoming = true;
		showAvatarCircle = false;
		widthPercentage = 0.2;
	}, {
		addBottomPadding = true;
		heightFactor = 1;
		isIncoming = false;
		showAvatarCircle = false;
		widthPercentage = 0.6;
	}, {
		addBottomPadding = true;
		heightFactor = 2;
		isIncoming = true;
		showAvatarCircle = true;
		widthPercentage = 0.75;
	}, {
		addBottomPadding = true;
		heightFactor = 2;
		isIncoming = false;
		showAvatarCircle = false;
		widthPercentage = 0.75;
	}, {
		addBottomPadding = false;
		heightFactor = 1;
		isIncoming = false;
		showAvatarCircle = false;
		widthPercentage = 0.75;
	}, {
		addBottomPadding = false;
		heightFactor = 1;
		isIncoming = false;
		showAvatarCircle = false;
		widthPercentage = 0.2;
	}, {
		addBottomPadding = true;
		heightFactor = 2;
		isIncoming = true;
		showAvatarCircle = true;
		widthPercentage = 0.7;
	}, {
		addBottomPadding = false;
		heightFactor = 1;
		isIncoming = true;
		showAvatarCircle = false;
		widthPercentage = 0.5;
	}, {
		addTopPadding = true;
		addBottomPadding = false;
		heightFactor = 1;
		isIncoming = true;
		showAvatarCircle = false;
		widthPercentage = 0.2;
	}};
	size = UDim2.new(1, 0, 1, 0);
	minTransparency = 0.5;
	maxTransparency = 0.9;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useCallback_upvr = React_upvr.useCallback
local PendingShimmerBubble_upvr = require(script.Parent.PendingShimmerBubble)
local BidirectionalFlatList_upvr = require(Parent.VirtualizedList).BidirectionalFlatList
return React_upvr.memo(function(arg1) -- Line 113, Named "PendingStateIndicator"
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: PendingShimmerBubble_upvr (readonly)
		[7]: BidirectionalFlatList_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var22 = any_join_result1_upvr.style or useStyle_upvr()
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = var22.Theme.BackgroundDefault.Color;
		BorderSizePixel = 0;
		Size = any_join_result1_upvr.size;
		Transparency = var22.Tokens.Global.Color.None.Transparency;
		LayoutOrder = any_join_result1_upvr.layoutOrder;
	}, {
		ShimmerMessageList = React_upvr.createElement(BidirectionalFlatList_upvr, {
			data = any_join_result1_upvr.itemList;
			renderItem = useCallback_upvr(function(arg1_2) -- Line 119
				--[[ Upvalues[4]:
					[1]: any_join_result1_upvr (readonly)
					[2]: React_upvr (copied, readonly)
					[3]: PendingShimmerBubble_upvr (copied, readonly)
					[4]: Cryo_upvr (copied, readonly)
				]]
				return React_upvr.createElement(PendingShimmerBubble_upvr, Cryo_upvr.Dictionary.join(arg1_2.item, {
					backgroundTransparency = any_join_result1_upvr.maxTransparency - (any_join_result1_upvr.maxTransparency - any_join_result1_upvr.minTransparency) * (arg1_2.index - 1) / math.max(1, #any_join_result1_upvr.itemList);
				}))
			end, {#any_join_result1_upvr.itemList});
			inverted = true;
			style = {
				BackgroundTransparency = 1;
				ScrollBarThickness = 0;
				Name = "ShimmerMessageList";
			};
			contentContainerStyle = {
				BackgroundTransparency = 1;
			};
			keyExtractor = function(arg1_3, arg2) -- Line 151, Named "keyExtractor"
				return arg2
			end;
			optimizeInvertedCanvasResize = true;
		});
	})
end)