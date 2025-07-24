-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:43
-- Luau version 6, Types version 3
-- Time taken: 0.004794 seconds

local Parent = script.Parent.Parent.Parent.Parent
local udim_upvr = UDim.new(0, 8)
local React_upvr = require(Parent.Parent.Parent.React)
local LoadableImage_upvr = require(Parent.Loading.LoadableImage)
return function(arg1) -- Line 27, Named "VerticalTileThumbnail"
	--[[ Upvalues[3]:
		[1]: udim_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: LoadableImage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 58 start (CF ANALYSIS FAILED)
	local aspectRatio = arg1.aspectRatio
	local isTopRounded = arg1.isTopRounded
	local isBottomRounded = arg1.isBottomRounded
	local thumbnail = arg1.thumbnail
	local border = arg1.border
	local var10 = isTopRounded and isBottomRounded
	local var11
	if not var10 then
		local var12 = isTopRounded or isBottomRounded
	end
	if border ~= nil then
		local _ = border.CornerRadius
	else
	end
	local module = {}
	if aspectRatio then
		var11 = UDim2.new(1, 0, aspectRatio, 0)
		-- KONSTANTWARNING: GOTO [41] #32
	end
	-- KONSTANTERROR: [0] 1. Error Block 58 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 26. Error Block 65 start (CF ANALYSIS FAILED)
	var11 = UDim2.new(1, 0, 1, 0)
	module.Size = var11
	if aspectRatio then
		var11 = Enum.SizeConstraint.RelativeXX
	else
		var11 = nil
	end
	module.SizeConstraint = var11
	var11 = 1
	module.BackgroundTransparency = var11
	var11 = {}
	local tbl_4 = {
		Position = UDim2.fromScale(0, 0);
	}
	if not var12 then
		-- KONSTANTWARNING: GOTO [73] #56
	end
	tbl_4.Size = UDim2.fromScale(1, 0.5)
	tbl_4.ClipsDescendants = true
	tbl_4.BackgroundTransparency = 1
	local tbl_3 = {}
	local tbl_5 = {
		BackgroundTransparency = 1;
		Image = thumbnail;
		Position = UDim2.fromScale(0, 0);
	}
	if not var12 then
		-- KONSTANTWARNING: GOTO [107] #81
	end
	local udim2_2 = UDim2.fromScale(1, 2)
	tbl_5.Size = udim2_2
	if var10 or isTopRounded then
	else
	end
	tbl_5.cornerRadius = nil
	tbl_5.showFailedStateWhenLoadingFailed = true
	tbl_5.useShimmerAnimationWhileLoading = true
	tbl_3.TopImage = React_upvr.createElement(LoadableImage_upvr, tbl_5)
	var11.TopFrame = React_upvr.createElement("Frame", tbl_4, tbl_3)
	if var12 then
		local tbl_2 = {
			Position = UDim2.fromScale(0, 0.5);
			Size = UDim2.fromScale(1, 0.5);
			ClipsDescendants = true;
			BackgroundTransparency = 1;
		}
		local tbl = {
			BackgroundTransparency = 1;
			Image = thumbnail;
			Position = UDim2.fromScale(0, -1);
		}
		local udim2 = UDim2.fromScale(1, 2)
		tbl.Size = udim2
		if var10 or isBottomRounded then
			udim2 = udim_upvr
		else
			udim2 = nil
		end
		tbl.cornerRadius = udim2
		tbl.showFailedStateWhenLoadingFailed = true
		tbl.useShimmerAnimationWhileLoading = true
		;({}).BottomImage = React_upvr.createElement(LoadableImage_upvr, tbl)
	else
	end
	var11.BottomFrame = nil
	do
		return React_upvr.createElement("Frame", module, var11)
	end
	-- KONSTANTERROR: [34] 26. Error Block 65 end (CF ANALYSIS FAILED)
end