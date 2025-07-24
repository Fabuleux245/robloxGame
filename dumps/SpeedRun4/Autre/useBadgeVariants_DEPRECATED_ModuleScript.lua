-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:14
-- Luau version 6, Types version 3
-- Time taken: 0.006124 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local BadgeSize_upvr = require(Foundation.Enums.BadgeSize)
local tbl_2_upvr = {
	[BadgeSize_upvr.Small] = "text-caption-small";
	[BadgeSize_upvr.Medium] = "text-label-small";
}
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local BadgeVariant_upvr = require(Foundation.Enums.BadgeVariant)
local Flags_upvr = require(Foundation.Utility.Flags)
return function(arg1, arg2, arg3, arg4) -- Line 25
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: BadgeVariant_upvr (readonly)
		[3]: BadgeSize_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: Flags_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useTokens_upvr_result1 = useTokens_upvr()
	local tbl = {
		[BadgeSize_upvr.Small] = useTokens_upvr_result1.Size.Size_300 - useTokens_upvr_result1.Padding.XXSmall * 2;
	}
	local Medium = BadgeSize_upvr.Medium
	local var20 = useTokens_upvr_result1.Padding.XXSmall * 2
	tbl[Medium] = useTokens_upvr_result1.Size.Size_600 - useTokens_upvr_result1.Stroke.Standard * 2 - var20
	local var21
	if arg3 or arg4 then
		Medium = "padding-xxsmall"
	else
		Medium = ""
	end
	var21 = tbl_2_upvr
	if arg3 then
		var21 = Vector2.new
		if Flags_upvr.FoundationDisableBadgeTruncation then
			var20 = math.huge
		else
			var20 = useTokens_upvr_result1.Size.Size_1600 - useTokens_upvr_result1.Semantic.Icon.Size.Small - useTokens_upvr_result1.Padding.XXSmall
		end
		var21 = var21(var20, math.huge)
	else
		var21 = nil
	end
	if arg4 or arg3 then
		local _ = tbl[arg2]
	else
	end
	local module = {}
	local Size_200 = useTokens_upvr_result1.Size.Size_200
	module.MinSize = Vector2.new(Size_200, useTokens_upvr_result1.Size.Size_200)
	if Flags_upvr.FoundationDisableBadgeTruncation then
		Size_200 = math.huge
	else
		Size_200 = useTokens_upvr_result1.Size.Size_1600
	end
	module.MaxSize = Vector2.new(Size_200, math.huge)
	local formatted = `auto-xy radius-circle row align-y-center align-x-center stroke-thick {Medium}`
	if Flags_upvr.FoundationDisableBadgeTruncation then
		formatted = `auto-xy {"padding-x-xsmall"} {var21[arg2]}`
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		formatted = `auto-xy text-truncate-end {"padding-x-xsmall"} {var21[arg2]}`
	end
	return ({
		[BadgeVariant_upvr.Primary] = {
			backgroundStyle = useTokens_upvr_result1.Color.System.Contrast;
			contentStyle = useTokens_upvr_result1.Inverse.Content.Emphasis;
		};
		[BadgeVariant_upvr.Secondary] = {
			backgroundStyle = useTokens_upvr_result1.Color.Shift.Shift_200;
			contentStyle = useTokens_upvr_result1.Color.Content.Emphasis;
		};
		[BadgeVariant_upvr.Alert] = {
			backgroundStyle = useTokens_upvr_result1.Color.System.Alert;
			contentStyle = useTokens_upvr_result1.DarkMode.Content.Emphasis;
		};
		[BadgeVariant_upvr.Success] = {
			backgroundStyle = useTokens_upvr_result1.Color.System.Success;
			contentStyle = useTokens_upvr_result1.LightMode.Content.Emphasis;
		};
		[BadgeVariant_upvr.Warning] = {
			backgroundStyle = useTokens_upvr_result1.Color.System.Warning;
			contentStyle = useTokens_upvr_result1.LightMode.Content.Emphasis;
		};
		[BadgeVariant_upvr.Contrast] = {
			backgroundStyle = useTokens_upvr_result1.Color.System.Contrast;
			contentStyle = useTokens_upvr_result1.Inverse.Content.Emphasis;
		};
		[BadgeVariant_upvr.Neutral] = {
			backgroundStyle = useTokens_upvr_result1.Color.Shift.Shift_300;
			contentStyle = useTokens_upvr_result1.Color.Content.Emphasis;
		};
		[BadgeVariant_upvr.OverMedia] = {
			backgroundStyle = useTokens_upvr_result1.LightMode.Surface.Surface_100;
			contentStyle = useTokens_upvr_result1.LightMode.Content.Emphasis;
		};
	})[arg1], module, {
		MaxSize = var21;
	}, formatted, formatted
end