-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:45
-- Luau version 6, Types version 3
-- Time taken: 0.000832 seconds

local GameIconRodux = script:FindFirstAncestor("GameIconRodux")
local Parent = GameIconRodux.Parent
local GameIconReducer_upvr = require(GameIconRodux.GameIcons.GameIconReducer)
local Promise_upvr = require(Parent.Promise)
local ApiFetchThumbnails_upvr = require(Parent.Http).Utils.ApiFetchThumbnails
local GamesGetIcons_upvr = require(GameIconRodux.GamesGetIcons)
local SetGameIcons_upvr = require(GameIconRodux.GameIcons.SetGameIcons)
return function(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[5]:
		[1]: GameIconReducer_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: ApiFetchThumbnails_upvr (readonly)
		[4]: GamesGetIcons_upvr (readonly)
		[5]: SetGameIcons_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[8]:
			[1]: GameIconReducer_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: ApiFetchThumbnails_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: arg3 (readonly)
			[7]: GamesGetIcons_upvr (copied, readonly)
			[8]: SetGameIcons_upvr (copied, readonly)
		]]
		local module = {}
		for _, v in pairs(arg2) do
			if arg1_2:getState()[GameIconReducer_upvr.key][v] == nil then
				table.insert(module, v)
			end
		end
		if #module == 0 then
			return Promise_upvr.resolve()
		end
		return ApiFetchThumbnails_upvr.Fetch(arg1, module, arg3 or "150x150", "Game", GamesGetIcons_upvr, SetGameIcons_upvr, arg1_2)
	end
end