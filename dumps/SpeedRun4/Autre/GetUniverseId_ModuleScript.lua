-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:17
-- Luau version 6, Types version 3
-- Time taken: 0.002491 seconds

local ExperienceLoadingScript = script:FindFirstAncestor("ExperienceLoadingScript")
local SetUniverseId_upvr = require(ExperienceLoadingScript.Actions.SetUniverseId)
local Url_upvr = require(ExperienceLoadingScript.Parent.Http).Url
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: SetUniverseId_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	local function var5_upvr(arg1_2) -- Line 7
		--[[ Upvalues[1]:
			[1]: SetUniverseId_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var6
		while not (game.PlaceId <= 0 or var6 > 0) do
			wait()
			var6 = game.GameId
		end
		arg1_2:dispatch(SetUniverseId_upvr({
			universeId = var6;
			placeId = game.PlaceId;
		}))
	end
	return function(arg1_3) -- Line 23
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: Url_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: SetUniverseId_upvr (copied, readonly)
			[5]: var5_upvr (readonly)
		]]
		coroutine.wrap(function() -- Line 24
			--[[ Upvalues[6]:
				[1]: arg2 (copied, readonly)
				[2]: Url_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg1_3 (readonly)
				[5]: SetUniverseId_upvr (copied, readonly)
				[6]: var5_upvr (copied, readonly)
			]]
			local var10_upvr = arg2
			local GameId_upvw = game.GameId
			if 0 < var10_upvr and GameId_upvw <= 0 then
				arg1(string.format("%suniverses/v1/places/%d/universe", Url_upvr.APIS_URL, var10_upvr), "GET"):andThen(function(arg1_4) -- Line 31
					--[[ Upvalues[5]:
						[1]: GameId_upvw (read and write)
						[2]: arg1_3 (copied, readonly)
						[3]: SetUniverseId_upvr (copied, readonly)
						[4]: var10_upvr (readonly)
						[5]: var5_upvr (copied, readonly)
					]]
					if arg1_4 and arg1_4.responseBody then
						GameId_upvw = arg1_4.responseBody.universeId
						if GameId_upvw and 0 <= GameId_upvw then
							arg1_3:dispatch(SetUniverseId_upvr({
								universeId = GameId_upvw;
								placeId = var10_upvr;
							}))
							return
						end
					end
					var5_upvr(arg1_3)
				end, function(arg1_5) -- Line 44
					--[[ Upvalues[2]:
						[1]: var5_upvr (copied, readonly)
						[2]: arg1_3 (copied, readonly)
					]]
					var5_upvr(arg1_3)
				end)
			else
				var5_upvr(arg1_3)
			end
		end)()
	end
end