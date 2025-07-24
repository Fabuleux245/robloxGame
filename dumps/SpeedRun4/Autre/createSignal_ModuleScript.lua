-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:17
-- Luau version 6, Types version 3
-- Time taken: 0.002387 seconds

local function _(arg1, arg2, arg3) -- Line 16, Named "addToMap"
	local module = {}
	for i, v in pairs(arg1) do
		module[i] = v
	end
	module[arg2] = arg3
	return module
end
local function _(arg1, arg2) -- Line 28, Named "removeFromMap"
	for i_2, v_2 in pairs(arg1) do
		if i_2 ~= arg2 then
			({})[i_2] = v_2
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return function() -- Line 40, Named "createSignal"
	local tbl_upvw = {}
	return {
		subscribe = function(arg1, arg2) -- Line 43, Named "subscribe"
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			local disconnect
			if typeof(arg2) ~= "function" then
				disconnect = false
			else
				disconnect = true
			end
			assert(disconnect, "Can only subscribe to signals with a function.")
			local tbl_upvr = {}
			tbl_upvr.callback = arg2
			disconnect = false
			tbl_upvr.disconnected = disconnect
			for i_3, v_3 in pairs(tbl_upvw) do
				({})[i_3] = v_3
				local var25
			end
			var25[arg2] = tbl_upvr
			disconnect = var25
			tbl_upvw = disconnect
			function disconnect() -- Line 53
				--[[ Upvalues[3]:
					[1]: tbl_upvr (readonly)
					[2]: tbl_upvw (copied, read and write)
					[3]: arg2 (readonly)
				]]
				assert(not tbl_upvr.disconnected, "Listeners can only be disconnected once.")
				tbl_upvr.disconnected = true
				for i_4, v_4 in pairs(tbl_upvw) do
					if i_4 ~= arg2 then
						({})[i_4] = v_4
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_upvw = {}
			end
			return disconnect
		end;
		fire = function(arg1, ...) -- Line 63, Named "fire"
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			for i_5, v_5 in pairs(tbl_upvw) do
				if not v_5.disconnected then
					i_5(...)
				end
			end
		end;
	}
end