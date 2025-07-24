-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:27
-- Luau version 6, Types version 3
-- Time taken: 0.000960 seconds

local Parent = script:FindFirstAncestor("GameDetailRodux").Parent
local module_upvr = {}
local Url_upvr = require(Parent.Http).Url
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	if module_upvr[arg2] then
		return module_upvr[arg2]
	end
	module_upvr[arg2] = arg1(string.format("%sv1/games?universeIds=%s", Url_upvr.GAME_URL, tostring(arg2)), "GET"):andThen(function(arg1_2) -- Line 16
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if not arg1_2.responseBody or not arg1_2.responseBody.data then
			Promise_upvr.reject("Unexpected response when fetching game name")
		end
		local _1 = arg1_2.responseBody.data[1]
		if not _1 or not _1.name then
			Promise_upvr.reject("Unexpected response when fetching game name, no game info")
		end
		return Promise_upvr.resolve({
			Name = _1.name;
			Description = _1.description or "";
			Created = _1.created;
		})
	end, function(arg1_3) -- Line 32
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(arg1_3)
	end)
	return module_upvr[arg2]
end