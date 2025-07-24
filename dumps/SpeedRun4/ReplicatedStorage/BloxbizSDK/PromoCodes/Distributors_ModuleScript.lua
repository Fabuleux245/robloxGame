-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:59
-- Luau version 6, Types version 3
-- Time taken: 0.002426 seconds

local Http_upvr = require(script.Parent.Http)
local Utils_upvr = require(script.Parent.Parent.Utils)
local module_upvr = {
	_playerReceivedCode = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes").PlayerReceivedPromoCode;
	getCurrentBatch = function(arg1, arg2) -- Line 10, Named "getCurrentBatch"
		--[[ Upvalues[2]:
			[1]: Http_upvr (readonly)
			[2]: Utils_upvr (readonly)
		]]
		local var4_upvw = arg2
		if not var4_upvw then
			var4_upvw = {}
		end
		local var6_upvr = "campaign/"..arg1.."/distributors/current"
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 14
			--[[ Upvalues[3]:
				[1]: Http_upvr (copied, readonly)
				[2]: var6_upvr (readonly)
				[3]: var4_upvw (read and write)
			]]
			return Http_upvr.post(var6_upvr, {
				metadata = var4_upvw.metadata;
				metadata_exclude = var4_upvw.metadata_exclude;
			})
		end)
		if not pcall_result1 then
			warn("[SuperBiz] Error fetching current distributor batch: "..tostring(pcall_result2_2))
			Utils_upvr.pprint(debug.traceback())
			return
		end
		return pcall_result2_2.data
	end;
}
function module_upvr.distributeCode(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[3]:
		[1]: Http_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local var10 = arg3
	if not var10 then
		var10 = {}
	end
	local var11 = var10
	local module_upvr_2 = {
		player_id = arg1.UserId;
		metadata = var11.metadata;
		metadata_exclude = var11.metadata_exclude;
	}
	local var14_upvr = "campaign/"..arg2.."/distribute"
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 40
		--[[ Upvalues[3]:
			[1]: Http_upvr (copied, readonly)
			[2]: var14_upvr (readonly)
			[3]: module_upvr_2 (readonly)
		]]
		return Http_upvr.post(var14_upvr, module_upvr_2)
	end)
	if not pcall_result1_2 then
		warn("[SuperBiz] Error distributing code to player: "..tostring(pcall_result2))
		Utils_upvr.pprint(debug.traceback())
		return
	end
	if pcall_result2.status ~= "ok" then
		warn("[SuperBiz] Error distributing code to player: "..tostring(pcall_result2.message))
		Utils_upvr.pprint(debug.traceback())
		return
	end
	module_upvr._playerReceivedCode:FireClient(arg1, pcall_result2.code.plaintext_code, pcall_result2.code.metadata)
	return pcall_result2.code.plaintext_code, pcall_result2.code.metadata
end
return module_upvr