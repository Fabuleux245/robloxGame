-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:45
-- Luau version 6, Types version 3
-- Time taken: 0.001232 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local React_upvr = require(Foundation.Parent.React)
local IconSize_upvr = require(Foundation.Enums.IconSize)
return function(arg1, arg2) -- Line 11, Named "useIconButtonPadding"
	--[[ Upvalues[3]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: IconSize_upvr (readonly)
	]]
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local tbl = {useTokens_upvr_result1_upvr}
	tbl[2] = arg2
	local var10 = React_upvr.useMemo(function() -- Line 14
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: IconSize_upvr (copied, readonly)
			[3]: useTokens_upvr_result1_upvr (readonly)
		]]
		if arg2 then
			return {
				[IconSize_upvr.XSmall] = useTokens_upvr_result1_upvr.Size.Size_150;
				[IconSize_upvr.Small] = useTokens_upvr_result1_upvr.Size.Size_200;
				[IconSize_upvr.Medium] = useTokens_upvr_result1_upvr.Size.Size_250;
				[IconSize_upvr.Large] = useTokens_upvr_result1_upvr.Size.Size_350;
			}
		end
		return {
			[IconSize_upvr.XSmall] = useTokens_upvr_result1_upvr.Size.Size_50;
			[IconSize_upvr.Small] = useTokens_upvr_result1_upvr.Size.Size_50;
			[IconSize_upvr.Medium] = useTokens_upvr_result1_upvr.Size.Size_100;
			[IconSize_upvr.Large] = useTokens_upvr_result1_upvr.Size.Size_150;
			[IconSize_upvr.XLarge] = useTokens_upvr_result1_upvr.Size.Size_200;
			[IconSize_upvr.XXLarge] = useTokens_upvr_result1_upvr.Size.Size_250;
		}
	end, tbl)[arg1]
	if var10 == nil then
		error("Invalid icon button size: "..arg1)
	end
	return var10
end