-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:00
-- Luau version 6, Types version 3
-- Time taken: 0.001847 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local tbl_upvr = {
	numAnimatedBars = 5;
	isMoving = true;
}
local tbl_upvr_2 = {0.4, 0.3, 0.75, 0.55}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local React_upvr = require(Songbird.Parent.React)
local AnimatedBar_upvr = require(Songbird.Components.AnimatedBar)
return function(arg1) -- Line 27, Named "MusicPlayingIcon"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AnimatedBar_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var10 = 8 / any_join_result1.numAnimatedBars
	local module = {}
	for i = 1, any_join_result1.numAnimatedBars do
		module[`Bar{i}`] = React_upvr.createElement(AnimatedBar_upvr, {
			layoutOrder = i;
			width = UDim.new((1) / (any_join_result1.numAnimatedBars * 1.3), -var10);
			heightRange = any_join_result1.heightRange;
			isMoving = any_join_result1.isMoving;
			staticHeight = tbl_upvr_2[i];
		})
	end
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		ZIndex = any_join_result1.zIndex;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, var10);
		});
	}, module)
end