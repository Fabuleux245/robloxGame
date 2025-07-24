-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:54
-- Luau version 6, Types version 3
-- Time taken: 0.001381 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Signals_upvr = require(AppChat.Parent.Signals)
local NetworkingShareLinks_upvr = require(AppChat.Http.NetworkingShareLinks)
local HttpService_upvr = game:GetService("HttpService")
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
return function() -- Line 23, Named "createShareLinkStore"
	--[[ Upvalues[4]:
		[1]: Signals_upvr (readonly)
		[2]: NetworkingShareLinks_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
	]]
	local any_createSignal_result1_upvr, any_createSignal_result2_upvr = Signals_upvr.createSignal({})
	local module_upvr = {}
	return {
		getShareLinkMetadataTable = function(arg1) -- Line 27, Named "getShareLinkMetadataTable"
			--[[ Upvalues[1]:
				[1]: any_createSignal_result1_upvr (readonly)
			]]
			return any_createSignal_result1_upvr(arg1)
		end;
		getShareLinkMetadataComputed = function(arg1) -- Line 32, Named "getShareLinkMetadataComputed"
			--[[ Upvalues[3]:
				[1]: module_upvr (readonly)
				[2]: Signals_upvr (copied, readonly)
				[3]: any_createSignal_result1_upvr (readonly)
			]]
			if not module_upvr[arg1] then
				module_upvr[arg1] = Signals_upvr.createComputed(function(arg1_2) -- Line 34
					--[[ Upvalues[2]:
						[1]: any_createSignal_result1_upvr (copied, readonly)
						[2]: arg1 (readonly)
					]]
					return any_createSignal_result1_upvr(arg1_2)[arg1]
				end)
			end
			return module_upvr[arg1]
		end;
		fetchShareLinkMetadata = function(arg1, arg2, arg3) -- Line 41, Named "fetchShareLinkMetadata"
			--[[ Upvalues[4]:
				[1]: NetworkingShareLinks_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
				[3]: any_new_result1_upvr (copied, readonly)
				[4]: any_createSignal_result2_upvr (readonly)
			]]
			local tbl = {}
			tbl.linkId = arg2
			tbl.linkType = arg3
			arg1(NetworkingShareLinks_upvr.GetMetadata.API(tbl)):andThen(function(arg1_3) -- Line 43
				--[[ Upvalues[4]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: any_createSignal_result2_upvr (copied, readonly)
					[4]: arg2 (readonly)
				]]
				local responseBody = arg1_3.responseBody
				if responseBody.data then
					local any_JSONDecode_result1_upvr = HttpService_upvr:JSONDecode(responseBody.data)
					if not any_JSONDecode_result1_upvr.universeId then
						any_new_result1_upvr:warning("Invalid share link metadata: ", any_JSONDecode_result1_upvr)
					end
					any_createSignal_result2_upvr(function(arg1_4) -- Line 50
						--[[ Upvalues[2]:
							[1]: arg2 (copied, readonly)
							[2]: any_JSONDecode_result1_upvr (readonly)
						]]
						local clone = table.clone(arg1_4)
						clone[arg2] = any_JSONDecode_result1_upvr
						return clone
					end)
				end
			end):catch(function(arg1_5) -- Line 57
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:warning("Error fetching share link metadata: ", arg1_5)
			end)
		end;
	}
end