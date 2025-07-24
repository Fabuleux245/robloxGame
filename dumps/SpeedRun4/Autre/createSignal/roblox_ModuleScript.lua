-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:26
-- Luau version 6, Types version 3
-- Time taken: 0.002047 seconds

return function() -- Line 36, Named "createSignal"
	local tbl_upvr = {}
	local tbl_upvr_3 = {}
	local var3_upvw = false
	return function(arg1) -- Line 41, Named "subscribe"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: tbl_upvr (readonly)
			[3]: tbl_upvr_3 (readonly)
		]]
		local disconnect
		if typeof(arg1) ~= "function" then
			disconnect = false
		else
			disconnect = true
		end
		assert(disconnect, "Can only subscribe to signals with a function.")
		local tbl_upvr_2 = {}
		tbl_upvr_2.callback = arg1
		disconnect = false
		tbl_upvr_2.disconnected = disconnect
		disconnect = var3_upvw
		if disconnect then
			disconnect = tbl_upvr[arg1]
			if not disconnect then
				disconnect = tbl_upvr_3
				disconnect[arg1] = tbl_upvr_2
			end
		end
		disconnect = tbl_upvr
		disconnect[arg1] = tbl_upvr_2
		function disconnect() -- Line 60
			--[[ Upvalues[4]:
				[1]: tbl_upvr_2 (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: tbl_upvr_3 (copied, readonly)
			]]
			assert(not tbl_upvr_2.disconnected, "Listeners can only be disconnected once.")
			tbl_upvr_2.disconnected = true
			tbl_upvr[arg1] = nil
			tbl_upvr_3[arg1] = nil
		end
		return disconnect
	end, function(...) -- Line 74, Named "fire"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: tbl_upvr (readonly)
			[3]: tbl_upvr_3 (readonly)
		]]
		var3_upvw = true
		for i, v in tbl_upvr do
			if not v.disconnected and not tbl_upvr_3[i] then
				i(...)
			end
		end
		var3_upvw = false
		table.clear(tbl_upvr_3)
	end
end