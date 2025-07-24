-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:54
-- Luau version 6, Types version 3
-- Time taken: 0.003814 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local ReactionList_upvr = require(script.Parent.ReactionList)
local Cryo_upvr = require(Parent.Cryo)
local Roact_upvr = require(Parent.Roact)
local ReactionMap_upvr = require(script.Parent.ReactionMap)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(100, 102, 104)
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local ArialBold_upvr = Enum.Font.ArialBold
return function(arg1) -- Line 20, Named "ReactionCounter"
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: ReactionList_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ReactionMap_upvr (readonly)
		[6]: Color3_fromRGB_result1_upvr (readonly)
		[7]: Color3_new_result1_upvr (readonly)
		[8]: ArialBold_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var18 = false
	local var19
	for _, v in arg1.reactionData do
		if 2 <= #v then
			var18 = true
		end
		local var20 = 0 + #v
		var19 += 1
	end
	if 3 < var19 then
		var18 = true
	end
	if 10 <= var20 then
	else
	end
	local module = {}
	local tbl_2 = {
		corner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
		padding = Roact_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 5);
			PaddingTop = UDim.new(0, 5);
			PaddingRight = UDim.new(0, 7);
			PaddingLeft = UDim.new(0, 7);
		});
	}
	local tbl = {
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 4);
	}
	tbl_2.layout = Roact_upvr.createElement("UIListLayout", tbl)
	local tbl_3 = {}
	tbl = var18
	local var33 = tbl
	if var33 then
		var33 = Roact_upvr.createElement
		var33 = var33("TextLabel", {
			Size = UDim2.new(0, 10, 0, 20);
			Text = var20;
			TextSize = 17;
			TextColor3 = Color3_new_result1_upvr;
			Font = ArialBold_upvr;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		})
	end
	tbl_3.reactionCount = var33
	module.reactionCounter = Roact_upvr.createElement("TextButton", {
		AutomaticSize = Enum.AutomaticSize.XY;
		BorderSizePixel = 0;
		Text = "";
		[Roact_upvr.Event.Activated] = arg1.onPressed;
		BackgroundColor3 = Color3_fromRGB_result1_upvr;
	}, tbl_2, React_upvr.useMemo(function() -- Line 36
		--[[ Upvalues[5]:
			[1]: ReactionList_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ReactionMap_upvr (copied, readonly)
		]]
		local var23 = 1
		for i_2 in ReactionList_upvr do
			if 4 <= var23 then break end
			if arg1.reactionData[ReactionList_upvr[i_2]] ~= nil then
				({})[var23] = ReactionList_upvr[i_2]
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Cryo_upvr.List.map({}, function(arg1_2, arg2) -- Line 49
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: ReactionMap_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement("ImageLabel", {
				Image = ReactionMap_upvr[arg1_2];
				Size = UDim2.new(0, 20, 0, 20);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				ScaleType = Enum.ScaleType.Fit;
				Name = "ShowReaction"..arg2;
			})
		end)
	end, {}), tbl_3)
	return module
end