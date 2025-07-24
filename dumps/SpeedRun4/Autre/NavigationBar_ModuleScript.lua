-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:17
-- Luau version 6, Types version 3
-- Time taken: 0.002929 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Parent_3 = Parent.Parent
local tbl_upvr = {
	visible = true;
	zIndex = 1;
	animated = false;
	maxWidth = 600;
	animationConfig = {
		dampingRatio = 1;
		frequency = 3;
	};
}
local Cryo_upvr = require(Parent_3.Cryo)
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local React_upvr = require(Parent_3.React)
local NavigationBarAlignment_upvr = require(Parent_2.Navigation.Enum.NavigationBarAlignment)
local ReactOtter_upvr = require(Parent_3.ReactOtter)
return function(arg1) -- Line 69, Named "NavigationBar"
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: NavigationBarAlignment_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 85 start (CF ANALYSIS FAILED)
	local var11
	if 0 >= #arg1.items then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "At least one item should be present!")
	var11 = Cryo_upvr.Dictionary
	var11 = tbl_upvr
	local any_join_result1 = var11.join(var11, arg1)
	var11 = useStyle_upvr()
	if any_join_result1.size then
		-- KONSTANTWARNING: GOTO [38] #28
	end
	-- KONSTANTERROR: [0] 1. Error Block 85 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 27. Error Block 92 start (CF ANALYSIS FAILED)
	local any_useState_result1, _ = React_upvr.useState(0)
	if any_join_result1.paddings and any_join_result1.paddings.Top then
	else
	end
	if any_join_result1.paddings and any_join_result1.paddings.Bottom then
	else
	end
	if any_join_result1.paddings and any_join_result1.paddings.Left then
	else
	end
	if any_join_result1.paddings and any_join_result1.paddings.Right then
	else
	end
	if any_join_result1.alignment == NavigationBarAlignment_upvr.Left then
		-- KONSTANTWARNING: GOTO [143] #91
	end
	-- KONSTANTERROR: [37] 27. Error Block 92 end (CF ANALYSIS FAILED)
end