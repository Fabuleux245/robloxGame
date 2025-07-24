-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:46
-- Luau version 6, Types version 3
-- Time taken: 0.002496 seconds

local GameVotesRodux = script:FindFirstAncestor("GameVotesRodux")
local Parent = GameVotesRodux.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {}
local function _(arg1) -- Line 12, Named "fetchKeymapper"
	return "luaapp.gamesapi.game-votes"..arg1
end
local GetGameVotes_upvr = require(GameVotesRodux.GameVotes.GetGameVotes)
local SetGameVotes_upvr = require(GameVotesRodux.GameVotes.SetGameVotes)
local Promise_upvr = require(Parent.Promise)
local Logging_upvr = require(Parent.AppCommonLib).Logging
local SetNetworkingErrorToast_upvr = require(Parent.RobloxAppToastsRodux).Thunks.SetNetworkingErrorToast
function module.Fetch(arg1, arg2) -- Line 16
	--[[ Upvalues[6]:
		[1]: PerformFetch_upvr (readonly)
		[2]: GetGameVotes_upvr (readonly)
		[3]: SetGameVotes_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: Logging_upvr (readonly)
		[6]: SetNetworkingErrorToast_upvr (readonly)
	]]
	local var10
	if type(arg2) ~= "string" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, string.format("FetchGameVotes thunk expects universeId to be a string, was %s", type(arg2)))
	var10 = PerformFetch_upvr
	var10 = "luaapp.gamesapi.game-votes"..arg2
	return var10.Single(var10, function(arg1_2) -- Line 22
		--[[ Upvalues[7]:
			[1]: GetGameVotes_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: SetGameVotes_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: Logging_upvr (copied, readonly)
			[7]: SetNetworkingErrorToast_upvr (copied, readonly)
		]]
		return GetGameVotes_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 23
			--[[ Upvalues[5]:
				[1]: arg1_2 (readonly)
				[2]: SetGameVotes_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
				[5]: Logging_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local responseBody_2 = arg1_3.responseBody
			if responseBody_2 ~= nil and responseBody_2.upVotes ~= nil then
				local var17
				if responseBody_2.downVotes ~= nil then
					if responseBody_2.upVotes < 0 then
						var17 = 0
					else
						var17 = responseBody_2.upVotes
					end
					if responseBody_2.downVotes < 0 then
					else
					end
					arg1_2:dispatch(SetGameVotes_upvr(arg2, var17, responseBody_2.downVotes))
					return Promise_upvr.resolve(arg1_3)
				end
			end
			Logging_upvr.warn("Response from GetGameVotes is malformed!")
			return Promise_upvr.reject({
				HttpError = Enum.HttpError.OK;
			})
		end, function(arg1_4) -- Line 39
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SetNetworkingErrorToast_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SetNetworkingErrorToast_upvr(arg1_4))
			return Promise_upvr.reject(arg1_4)
		end)
	end)
end
function module.GetFetchingStatus(arg1, arg2) -- Line 46
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.gamesapi.game-votes"..arg2)
end
return module