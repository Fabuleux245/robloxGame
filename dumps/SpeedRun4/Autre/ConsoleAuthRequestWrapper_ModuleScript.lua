-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:03
-- Luau version 6, Types version 3
-- Time taken: 0.001310 seconds

local Parent = script:FindFirstAncestor("Http").Parent
local Promise_upvr = require(Parent.Promise)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("PCGDKCredentialsProtocolImpl")
local MessageBusService_upvr = game:GetService("MessageBusService")
local Logging_upvr = require(Parent.AppCommonLib).Logging
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2, arg3, arg4) -- Line 18
	--[[ Upvalues[5]:
		[1]: Promise_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: MessageBusService_upvr (readonly)
		[4]: Logging_upvr (readonly)
		[5]: Cryo_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 19
		--[[ Upvalues[8]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: MessageBusService_upvr (copied, readonly)
			[5]: Logging_upvr (copied, readonly)
			[6]: arg4 (readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var10
		if game_GetEngineFeature_result1_upvr then
			local tbl = {}
			tbl.url = arg2
			tbl.method = arg3
			var10 = tbl
		end
		if game_GetEngineFeature_result1_upvr then
		else
		end
		MessageBusService_upvr:MakeRequest("CredentialsProtocol", "getHeaders", {}, function(arg1_3) -- Line 31
			--[[ Upvalues[8]:
				[1]: Logging_upvr (copied, readonly)
				[2]: arg2_2 (readonly)
				[3]: arg4 (copied, readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: arg2 (copied, readonly)
				[7]: arg3 (copied, readonly)
				[8]: arg1_2 (readonly)
			]]
			if not arg1_3 or not arg1_3.success then
				Logging_upvr.warn("credential headers error")
				arg2_2({})
			end
			local headers = arg4.headers
			if not headers then
				headers = {}
			end
			local headers_2 = arg1_3.headers
			if not headers_2 then
				headers_2 = {}
			end
			arg4.headers = Cryo_upvr.Dictionary.join(headers, headers_2)
			return arg1(arg2, arg3, arg4):andThen(arg1_2):catch(arg2_2)
		end, {})
	end)
end