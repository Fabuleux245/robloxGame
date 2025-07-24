-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:43
-- Luau version 6, Types version 3
-- Time taken: 0.000552 seconds

local GameIconRodux = script:FindFirstAncestor("GameIconRodux")
local SetBigGameIcons_upvr = require(GameIconRodux.BigGameIcons.SetBigGameIcons)
local Cryo_upvr = require(GameIconRodux.Parent.Cryo)
return {
	key = "BigGameIconsKey";
	reducer = function(arg1, arg2) -- Line 7
		--[[ Upvalues[2]:
			[1]: SetBigGameIcons_upvr (readonly)
			[2]: Cryo_upvr (readonly)
		]]
		local var5 = arg1
		if not var5 then
			var5 = {}
		end
		arg1 = var5
		local var6 = arg1
		if arg2.type == SetBigGameIcons_upvr.name then
			var6 = Cryo_upvr.Dictionary.join(var6, arg2.gameIcons)
		end
		return var6
	end;
}