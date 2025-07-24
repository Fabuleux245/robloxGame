-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:12
-- Luau version 6, Types version 3
-- Time taken: 0.000811 seconds

local FFlagLuaAppGameTileIconTextBadgeEnabled_upvr = require(script:FindFirstAncestor("GameTile").Parent.SharedFlags).FFlagLuaAppGameTileIconTextBadgeEnabled
local module_upvr = {}
return function(arg1, arg2) -- Line 12, Named "getGameTileLayoutData"
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppGameTileIconTextBadgeEnabled_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg1 and arg1.layoutDataBySort and arg2 and arg2 ~= "" and arg1.layoutDataBySort[arg2] then
		return arg1.layoutDataBySort[arg2]
	end
	if arg1 and arg1.defaultLayoutData then
		return arg1.defaultLayoutData
	end
	if FFlagLuaAppGameTileIconTextBadgeEnabled_upvr then
		return module_upvr
	end
	return {}
end