-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:53
-- Luau version 6, Types version 3
-- Time taken: 0.004797 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local ReactionList_upvr = require(script.Parent.ReactionList)
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local Roact_upvr = require(Parent.Roact)
local White_upvr = require(Parent.Style).Colors.White
local ArialBold_upvr = Enum.Font.ArialBold
local ReactionMap_upvr = require(script.Parent.ReactionMap)
return function(arg1) -- Line 23
	--[[ Upvalues[7]:
		[1]: ReactionList_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: White_upvr (readonly)
		[6]: ArialBold_upvr (readonly)
		[7]: ReactionMap_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_upvr = {}
	if arg1.emoji == "All" then
		for i in ReactionList_upvr do
			if arg1.reactionData[ReactionList_upvr[i]] ~= nil then
				for i_2 in arg1.reactionData[ReactionList_upvr[i]] do
					module_upvr[1] = {arg1.reactionData[ReactionList_upvr[i]][i_2], ReactionList_upvr[i]}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local var24
				end
			end
		end
	else
		var24 = 1
		for i_3 in arg1.reactionData[arg1.emoji] do
			local tbl = {}
			i_2 = arg1.reactionData
			tbl[1] = i_2[arg1.emoji][i_3]
			tbl[2] = arg1.emoji
			module_upvr[var24] = tbl
			var24 += 1
			local var26
		end
	end
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 44
		--[[ Upvalues[6]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: module_upvr (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: White_upvr (copied, readonly)
			[5]: ArialBold_upvr (copied, readonly)
			[6]: ReactionMap_upvr (copied, readonly)
		]]
		return Cryo_upvr.List.map(module_upvr, function(arg1_2, arg2) -- Line 45
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: White_upvr (copied, readonly)
				[3]: ArialBold_upvr (copied, readonly)
				[4]: ReactionMap_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 36);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
			}, {
				padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 25);
					PaddingRight = UDim.new(0, 25);
				});
				profilePic = Roact_upvr.createElement("ImageLabel", {
					Size = UDim2.new(0, 36, 0, 36);
					BorderSizePixel = 0;
					Image = "rbxthumb://type=AvatarHeadShot&id=505306092&w=150&h=150&filters=circular";
					BackgroundTransparency = 1;
					ScaleType = Enum.ScaleType.Fit;
				});
				userInfo = Roact_upvr.createElement("TextLabel", {
					Size = UDim2.new(0.5, 0, 0, 36);
					BorderSizePixel = 0;
					TextColor3 = White_upvr;
					TextSize = 15;
					Text = arg1_2[1];
					Font = ArialBold_upvr;
					TextXAlignment = Enum.TextXAlignment.Left;
					BackgroundTransparency = 1;
					Position = UDim2.new(0, 56, 0, 0);
				});
				emoji = Roact_upvr.createElement("ImageLabel", {
					Size = UDim2.new(0, 25, 0, 25);
					BorderSizePixel = 0;
					Image = ReactionMap_upvr[arg1_2[2]];
					BackgroundTransparency = 1;
					ScaleType = Enum.ScaleType.Fit;
					Position = UDim2.new(1, -25, 0.5, -12.5);
				});
			})
		end)
	end, {arg1.reactionData, arg1.emoji})
	return Roact_upvr.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 285);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		ScrollBarThickness = 0;
		CanvasSize = UDim2.new(0, 0, 0, #any_useMemo_result1 * 53 - 17 + 5);
		LayoutOrder = arg1.LayoutOrder;
	}, {
		layout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 17);
		});
	}, any_useMemo_result1)
end