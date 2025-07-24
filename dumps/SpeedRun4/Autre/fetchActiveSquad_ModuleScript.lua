-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:23
-- Luau version 6, Types version 3
-- Time taken: 0.001229 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local Logger = require(Parent.Loggers).Logger
local NetworkingSquads_upvr = require(SquadsCore.Http.NetworkingSquads)
local any_new_result1_upvr = Logger.new(Logger, "SquadsCore")
local Promise_upvr = require(Parent.Promise)
return function() -- Line 11
	--[[ Upvalues[3]:
		[1]: NetworkingSquads_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	return function(arg1) -- Line 12
		--[[ Upvalues[3]:
			[1]: NetworkingSquads_upvr (copied, readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		return arg1:dispatch(NetworkingSquads_upvr.GetSquadActive.API({})):catch(function(arg1_2) -- Line 13
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			local var10
			if arg1_2.StatusCode then
				var10 = arg1_2.StatusCode
			else
				var10 = -1
			end
			any_new_result1_upvr:warning("Error fetching active squad: {}", var10)
			return Promise_upvr.reject(arg1_2)
		end)
	end
end