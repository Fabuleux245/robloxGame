-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:31
-- Luau version 6, Types version 3
-- Time taken: 0.002120 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local FoundationImages = require(Parent.FoundationImages)
local IconSize_upvr = require(Foundation.Enums.IconSize)
local tbl_upvr = {
	[IconSize_upvr.Small] = {Vector2.new(16, 16), Vector2.new(18, 18)};
	[IconSize_upvr.Medium] = {Vector2.new(28, 28), Vector2.new(36, 36)};
	[IconSize_upvr.Large] = {Vector2.new(48, 48)};
}
local tbl_upvr_2 = {
	Small = {
		[IconSize_upvr.XSmall] = 0.66667;
		[IconSize_upvr.Small] = 0.88889;
		[IconSize_upvr.Medium] = 1.11111;
		[IconSize_upvr.Large] = 1.33333;
	};
	Medium = {
		[IconSize_upvr.XSmall] = 0.45;
		[IconSize_upvr.Small] = 0.600003;
		[IconSize_upvr.Medium] = 0.749997;
		[IconSize_upvr.Large] = 0.9;
	};
	Large = {
		[IconSize_upvr.XSmall] = 0.24545699999999998;
		[IconSize_upvr.Small] = 0.327276;
		[IconSize_upvr.Medium] = 0.40909500000000004;
		[IconSize_upvr.Large] = 0.490905;
	};
}
local Flags_upvr = require(Foundation.Utility.Flags)
local Images_upvr = FoundationImages.Images
local any_getResolutionScale_result1_upvr = FoundationImages.getResolutionScale()
local Dash_upvr = require(Parent.Dash)
return function(arg1, arg2) -- Line 56, Named "useIcon"
	--[[ Upvalues[7]:
		[1]: Flags_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: any_getResolutionScale_result1_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Dash_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	if not Flags_upvr.FoundationAdjustButtonIconSizes or not arg1 then
		return nil, 1
	end
	local var17 = Images_upvr[arg1]
	if not var17 then
		return nil, 1
	end
	local vector2 = Vector2.new(var17.ImageRectSize.X / any_getResolutionScale_result1_upvr, var17.ImageRectSize.Y / any_getResolutionScale_result1_upvr)
	if Dash_upvr.includes(tbl_upvr[IconSize_upvr.Small], vector2) then
		-- KONSTANTWARNING: GOTO [76] #61
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 38. Error Block 20 start (CF ANALYSIS FAILED)
	if Dash_upvr.includes(tbl_upvr[IconSize_upvr.Medium], vector2) then
	elseif Dash_upvr.includes(tbl_upvr[IconSize_upvr.Large], vector2) then
	end
	-- KONSTANTERROR: [47] 38. Error Block 20 end (CF ANALYSIS FAILED)
end