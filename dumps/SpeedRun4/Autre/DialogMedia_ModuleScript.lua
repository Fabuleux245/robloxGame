-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:30
-- Luau version 6, Types version 3
-- Time taken: 0.000690 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local tbl_upvr = {
	LayoutOrder = -1;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local React_upvr = require(Foundation.Parent.React)
local View_upvr = require(Foundation.Components.View)
local Image_upvr = require(Foundation.Components.Image)
return function(arg1) -- Line 26, Named "DialogMedia"
	--[[ Upvalues[5]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: Image_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	return React_upvr.createElement(View_upvr, {
		tag = "auto-y size-full-0 row align-x-center";
		LayoutOrder = withDefaults_upvr_result1.LayoutOrder;
	}, {
		Image = React_upvr.createElement(Image_upvr, {
			aspectRatio = withDefaults_upvr_result1.aspectRatio;
			Image = withDefaults_upvr_result1.media;
			Size = withDefaults_upvr_result1.Size;
		});
	})
end