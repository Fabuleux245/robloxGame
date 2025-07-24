-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:55
-- Luau version 6, Types version 3
-- Time taken: 0.001927 seconds

local GameInfosRodux = script:FindFirstAncestor("GameInfosRodux")
local Parent = GameInfosRodux.Parent
local GameInfosReducer_upvr = require(GameInfosRodux.GameInfosReducer)
local tutils_upvr = require(Parent.tutils)
local AddGames_upvr = require(GameInfosRodux.AddGames)
local ApiFetchGameIcons_upvr = require(Parent.GameIconRodux).GameIcons.ApiFetchGameIcons
return function(arg1, arg2, arg3, arg4, arg5) -- Line 10, Named "parseAndAddGameInfos"
	--[[ Upvalues[4]:
		[1]: GameInfosReducer_upvr (readonly)
		[2]: tutils_upvr (readonly)
		[3]: AddGames_upvr (readonly)
		[4]: ApiFetchGameIcons_upvr (readonly)
	]]
	local var11_upvr = arg2:getState().Personalization[GameInfosReducer_upvr.key]
	local tbl_upvr_2 = {}
	local tbl_upvr = {}
	for i, v_upvr in arg3 do
		arg4(v_upvr):match(function(arg1_2) -- Line 25
			--[[ Upvalues[6]:
				[1]: tutils_upvr (copied, readonly)
				[2]: var11_upvr (readonly)
				[3]: tbl_upvr_2 (readonly)
				[4]: tbl_upvr (readonly)
				[5]: arg5 (readonly)
				[6]: v_upvr (readonly)
			]]
			local universeId = arg1_2.universeId
			if not tutils_upvr.shallowEqual(arg1_2, var11_upvr[universeId]) then
				tbl_upvr_2[universeId] = arg1_2
				table.insert(tbl_upvr, universeId)
			end
			if arg5 then
				arg5(v_upvr, arg1_2)
			end
		end):matchError(function(arg1_3) -- Line 38
			warn(`parseAndAddGameInfos could not parse gameInfo: {arg1_3}`)
		end)
	end
	if next(tbl_upvr_2) then
		i = tbl_upvr_2
		arg2:dispatch(AddGames_upvr(i))
	end
	if 0 < #tbl_upvr then
		i = arg1
		v_upvr = tbl_upvr
		arg2:dispatch(ApiFetchGameIcons_upvr(i, v_upvr))
	end
end