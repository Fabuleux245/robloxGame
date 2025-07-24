-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:55
-- Luau version 6, Types version 3
-- Time taken: 0.004569 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local React_upvr = require(Parent.React)
local Colors_upvr = require(Parent.Style).Colors
local Flint_upvr = Colors_upvr.Flint
local ReactionList_upvr = require(script.Parent.ReactionList)
local Cryo_upvr = require(Parent.Cryo)
local ReactionMap_upvr = require(script.Parent.ReactionMap)
local ArialBold_upvr = Enum.Font.ArialBold
local White_upvr = Colors_upvr.White
local function Navigator_upvr(arg1) -- Line 25, Named "Navigator"
	--[[ Upvalues[8]:
		[1]: ReactionList_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Flint_upvr (readonly)
		[6]: ReactionMap_upvr (readonly)
		[7]: ArialBold_upvr (readonly)
		[8]: White_upvr (readonly)
	]]
	local tbl_upvr = {}
	local var18 = 0
	for _, v in arg1.reactionData do
		var18 += #v
	end
	for i_2 in ReactionList_upvr do
		if arg1.reactionData[ReactionList_upvr[i_2]] ~= nil then
			tbl_upvr[1] = ReactionList_upvr[i_2]
		end
	end
	local _ = {}
	;({}).Size = UDim2.new(1, 0, 0, 80)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).BackgroundTransparency = 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).LayoutOrder = arg1.LayoutOrder
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Roact_upvr.createElement("Frame", {}, {
		verticalLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}, {
		header = Roact_upvr.createElement("TextLabel", {
			Text = "Reactions";
			TextSize = 20;
			TextColor3 = White_upvr;
			Font = ArialBold_upvr;
			Size = UDim2.fromScale(1, 0.5);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		});
		scroller = Roact_upvr.createElement("ScrollingFrame", {
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.5);
			ScrollBarThickness = 5;
			CanvasSize = UDim2.new(0, (#tbl_upvr + 1) * 54 + 10, 0, 0);
			LayoutOrder = 2;
		}, {
			horizontalLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}, {
			padding = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, 5, 0, 5);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				LayoutOrder = 1;
			});
			allFilter = Roact_upvr.createElement("TextButton", {
				Size = UDim2.new(0, 54, 0, 28);
				BackgroundColor3 = Flint_upvr;
				BorderSizePixel = 0;
				Text = "All  "..var18;
				Font = ArialBold_upvr;
				TextColor3 = White_upvr;
				TextSize = 15;
				TextWrapped = true;
				LayoutOrder = 2;
				[React_upvr.Event.Activated] = function() -- Line 122
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1.setEmoji("All")
				end;
			}, {
				corner = Roact_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0.4, 0);
				});
			});
		}, React_upvr.useMemo(function() -- Line 38
			--[[ Upvalues[9]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: Flint_upvr (copied, readonly)
				[5]: React_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: ReactionMap_upvr (copied, readonly)
				[8]: ArialBold_upvr (copied, readonly)
				[9]: White_upvr (copied, readonly)
			]]
			return Cryo_upvr.List.map(tbl_upvr, function(arg1_2, arg2) -- Line 39
				--[[ Upvalues[7]:
					[1]: Roact_upvr (copied, readonly)
					[2]: Flint_upvr (copied, readonly)
					[3]: React_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: ReactionMap_upvr (copied, readonly)
					[6]: ArialBold_upvr (copied, readonly)
					[7]: White_upvr (copied, readonly)
				]]
				return Roact_upvr.createElement("TextButton", {
					Size = UDim2.new(0, 54, 0, 28);
					BackgroundColor3 = Flint_upvr;
					BorderSizePixel = 0;
					Text = "";
					LayoutOrder = arg2 + 2;
					[React_upvr.Event.Activated] = function() -- Line 46
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg1_2 (readonly)
						]]
						arg1.setEmoji(arg1_2)
					end;
				}, {
					corner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0.4, 0);
					});
					emoji = Roact_upvr.createElement("ImageLabel", {
						Size = UDim2.new(0, 18, 0, 18);
						Position = UDim2.new(0.16, 0, 0.5, -9);
						BackgroundTransparency = 1;
						Image = ReactionMap_upvr[arg1_2];
					});
					count = Roact_upvr.createElement("TextLabel", {
						Size = UDim2.new(0.5, 0, 1, 0);
						Position = UDim2.new(0.5, 0, 0, 0);
						BackgroundTransparency = 1;
						Name = arg1_2.."Filter";
						Text = #arg1.reactionData[arg1_2];
						Font = ArialBold_upvr;
						TextColor3 = White_upvr;
						TextSize = 15;
						TextWrapped = true;
					});
				})
			end)
		end, {tbl_upvr}));
	})
end
local DetailList_upvr = require(script.Parent.DetailList)
return function(arg1) -- Line 134, Named "ReactionDetail"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Flint_upvr (readonly)
		[4]: Navigator_upvr (readonly)
		[5]: Colors_upvr (readonly)
		[6]: DetailList_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState("All")
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
			navigator = Roact_upvr.createElement(Navigator_upvr, {
				setEmoji = any_useState_result2;
				reactionData = arg1.reactionData;
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
				emoji = any_useState_result1;
				reactionData = arg1.reactionData;
				LayoutOrder = 4;
			});
		});
	}
end