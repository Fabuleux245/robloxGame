-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:12
-- Luau version 6, Types version 3
-- Time taken: 0.004395 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagEnablePreferredTextSizeFixGameGrid_upvr = require(Parent.SharedFlags).FFlagEnablePreferredTextSizeFixGameGrid
local FFlagLuaAppMigrateGameTileFooterValueFixes_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileFooterValueFixes
local FFlagLuaAppUnifyPlayButtonTile_upvr = require(Parent.SharedFlags).FFlagLuaAppUnifyPlayButtonTile
local any_memoize_result1_upvr = require(Parent.AppCommonLib).memoize(function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 74
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[2]: FFlagLuaAppUnifyPlayButtonTile_upvr (readonly)
	]]
	if FFlagLuaAppMigrateGameTile_upvr and arg4 and arg5 then
		local module = {
			footerTopPadding = arg4.Gap.Medium;
			titleHeight = (arg3 or 1) * (arg4.Size.Size_500 + (arg2 or 0));
			paddingAboveMetadata = 0;
			metadataHeight = (arg6 or 1) * (arg4.Size.Size_500 + (arg2 or 0));
		}
		local Medium = arg4.Gap.Medium
		module.footerBottomPadding = Medium
		if FFlagLuaAppUnifyPlayButtonTile_upvr then
			Medium = arg4.Size.Size_1000
		else
			Medium = arg4.Size.Size_900
		end
		module.playButtonHeight = Medium
		return module
	end
	local module_2 = {}
	Medium = arg1.Global.Space_150
	local var11 = Medium
	module_2.footerTopPadding = var11
	if FFlagLuaAppMigrateGameTile_upvr then
		var11 = (arg3 or 1) * (arg1.Global.Space_250 + (arg2 or 0))
	else
		var11 = arg1.Global.Space_250 + (arg2 or 0)
	end
	module_2.titleHeight = var11
	module_2.paddingAboveMetadata = 0
	module_2.metadataHeight = (arg6 or 1) * (arg1.Global.Space_250 + (arg2 or 0))
	local Space_150 = arg1.Global.Space_150
	module_2.footerBottomPadding = Space_150
	if FFlagLuaAppUnifyPlayButtonTile_upvr then
		Space_150 = arg1.Global.Size_500
	else
		Space_150 = arg1.Global.Size_450
	end
	module_2.playButtonHeight = Space_150
	return module_2
end)
local function getFooterHeight_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 109, Named "getFooterHeight"
	--[[ Upvalues[3]:
		[1]: any_memoize_result1_upvr (readonly)
		[2]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		[3]: FFlagLuaAppMigrateGameTile_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	if FFlagEnablePreferredTextSizeFixGameGrid_upvr then
	else
	end
	if FFlagLuaAppMigrateGameTile_upvr then
		-- KONSTANTWARNING: GOTO [12] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 12. Error Block 53 start (CF ANALYSIS FAILED)
	if FFlagLuaAppMigrateGameTile_upvr then
		-- KONSTANTWARNING: GOTO [17] #18
	end
	-- KONSTANTERROR: [11] 12. Error Block 53 end (CF ANALYSIS FAILED)
end
return {
	getTileHeight = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) -- Line 152, Named "getTileHeight"
		--[[ Upvalues[3]:
			[1]: getFooterHeight_upvr (readonly)
			[2]: FFlagLuaAppMigrateGameTile_upvr (readonly)
			[3]: FFlagEnablePreferredTextSizeFixGameGrid_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
		if arg3 == "Wide" or arg3 == "Event" then
		else
		end
		if FFlagLuaAppMigrateGameTile_upvr then
			-- KONSTANTWARNING: GOTO [21] #20
		end
		-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 19. Error Block 42 start (CF ANALYSIS FAILED)
		if FFlagLuaAppMigrateGameTile_upvr then
			-- KONSTANTWARNING: GOTO [26] #25
		end
		-- KONSTANTERROR: [20] 19. Error Block 42 end (CF ANALYSIS FAILED)
	end;
	getFooterHeight = getFooterHeight_upvr;
	getImageAspectRatio = function(arg1) -- Line 23, Named "getImageAspectRatio"
		if arg1 == "Wide" or arg1 == "Event" then
			return 1.7777777777777777
		end
		return 1
	end;
	getInverseImageAspectRatio = function(arg1) -- Line 31, Named "getInverseImageAspectRatio"
		if arg1 == "Wide" or arg1 == "Event" then
			return 0.5625
		end
		return 1
	end;
	getElementSizes = any_memoize_result1_upvr;
	getContainmentSidePadding = function(arg1, arg2, arg3, arg4) -- Line 39, Named "getContainmentSidePadding"
		--[[ Upvalues[2]:
			[1]: FFlagLuaAppMigrateGameTile_upvr (readonly)
			[2]: FFlagLuaAppMigrateGameTileFooterValueFixes_upvr (readonly)
		]]
		if FFlagLuaAppMigrateGameTile_upvr and arg3 and arg4 then
			if arg2 == "Wide" or arg2 == "Event" then
				if FFlagLuaAppMigrateGameTileFooterValueFixes_upvr then
					return arg3.Padding.Medium
				end
				return arg3.Padding.Large
			end
			if FFlagLuaAppMigrateGameTileFooterValueFixes_upvr then
				return arg3.Size.Size_150
			end
			return arg3.Padding.Small
		end
		if arg2 == "Wide" or arg2 == "Event" then
			return arg1.Global.Space_150
		end
		return arg1.Global.Space_75
	end;
}