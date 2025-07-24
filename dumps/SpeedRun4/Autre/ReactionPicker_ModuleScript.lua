-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:57
-- Luau version 6, Types version 3
-- Time taken: 0.003734 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local ReactionList_upvr = require(script.Parent.ReactionList)
local Cryo_upvr = require(Parent.Cryo)
local Roact_upvr = require(Parent.Roact)
local ReactionMap_upvr = require(script.Parent.ReactionMap)
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(57, 59, 61)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(100, 102, 104)
return function(arg1) -- Line 15, Named "ReactionPicker"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: ReactionList_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ReactionMap_upvr (readonly)
		[6]: Color3_fromRGB_result1_upvr_2 (readonly)
		[7]: Color3_fromRGB_result1_upvr (readonly)
	]]
	if arg1.numReactionsToShow == nil then
		arg1.numReactionsToShow = 6
	end
	if 6 < arg1.numReactionsToShow or arg1.numReactionsToShow < 0 then
		error("Invalid number of reactions")
	end
	return {
		ReactionPicker = Roact_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BorderSizePixel = 0;
			BackgroundColor3 = Color3_fromRGB_result1_upvr;
		}, {
			corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			padding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 10);
				PaddingTop = UDim.new(0, 10);
				PaddingRight = UDim.new(0, 19.5);
				PaddingLeft = UDim.new(0, 19.5);
			});
			layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 11);
			});
		}, React_upvr.useMemo(function() -- Line 23
			--[[ Upvalues[7]:
				[1]: ReactionList_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ReactionMap_upvr (copied, readonly)
				[6]: React_upvr (copied, readonly)
				[7]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
			]]
			local module = {}
			for i in ReactionList_upvr do
				if arg1.numReactionsToShow < i then break end
				module[i] = ReactionList_upvr[i]
			end
			return Cryo_upvr.List.map(module, function(arg1_2, arg2) -- Line 31
				--[[ Upvalues[5]:
					[1]: arg1 (copied, readonly)
					[2]: Roact_upvr (copied, readonly)
					[3]: ReactionMap_upvr (copied, readonly)
					[4]: React_upvr (copied, readonly)
					[5]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
				]]
				local var13
				if arg1_2 == arg1.selectedReactionType then
					var13 = 0
				else
					var13 = 1
				end
				return Roact_upvr.createElement("Frame", {
					Size = UDim2.new(0, 40, 0, 40);
					BorderSizePixel = 0;
					BackgroundTransparency = 1;
				}, {
					imageButton = Roact_upvr.createElement("ImageButton", {
						Image = ReactionMap_upvr[arg1_2];
						Name = arg1_2.."_Button";
						Size = UDim2.new(0, 40, 0, 40);
						BorderSizePixel = 0;
						BackgroundTransparency = 1;
						ScaleType = Enum.ScaleType.Fit;
						[React_upvr.Event.Activated] = function() -- Line 45
							--[[ Upvalues[2]:
								[1]: arg1 (copied, readonly)
								[2]: arg1_2 (readonly)
							]]
							arg1.onReactionSelected(arg1_2)
						end;
					});
					indicator = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(0, 6, 0, 6);
						Position = UDim2.new(0.5, -3, 1, 2);
						BackgroundColor3 = Color3_fromRGB_result1_upvr_2;
						BackgroundTransparency = var13;
						Name = arg1_2.."_Indicator";
					}, {
						corner = Roact_upvr.createElement("UICorner", {
							CornerRadius = UDim.new(1, 0);
						});
					});
				})
			end)
		end, {ReactionMap_upvr, arg1.selectedReactionType}));
	}
end