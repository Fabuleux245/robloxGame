-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:54
-- Luau version 6, Types version 3
-- Time taken: 0.001407 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Colors_upvr = require(Parent.Style).Colors
local React_upvr = require(Parent.React)
local Roact_upvr = require(Parent.Roact)
local Flint_upvr = Colors_upvr.Flint
local White_upvr = Colors_upvr.White
local ArialBold_upvr = Enum.Font.ArialBold
local DetailList_upvr = require(script.Parent.DetailList)
return function(arg1) -- Line 20, Named "ReactionDetail"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Flint_upvr (readonly)
		[4]: White_upvr (readonly)
		[5]: ArialBold_upvr (readonly)
		[6]: Colors_upvr (readonly)
		[7]: DetailList_upvr (readonly)
	]]
	return {
		ReactionDetail = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, 300, 0, 375);
			BackgroundColor3 = Flint_upvr;
		}, {
			corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.05, 0);
			});
			layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}, {
			header = Roact_upvr.createElement("TextLabel", {
				Text = "Reactions";
				TextSize = 20;
				TextColor3 = White_upvr;
				Font = ArialBold_upvr;
				Size = UDim2.new(1, 0, 0, 40);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				LayoutOrder = 1;
			});
			bar = Roact_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 0);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				LayoutOrder = 2;
			}, {Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0.97, 0, 0, 0);
				BackgroundColor3 = Colors_upvr.White;
				BorderColor3 = Colors_upvr.White;
				Position = UDim2.new(0.015, 0, 0, 0);
			})});
			padding = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 10);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				LayoutOrder = 3;
			});
			detailList = Roact_upvr.createElement(DetailList_upvr, {
				emoji = React_upvr.useState("All");
				reactionData = arg1.reactionData;
				LayoutOrder = 4;
			});
		});
	}
end