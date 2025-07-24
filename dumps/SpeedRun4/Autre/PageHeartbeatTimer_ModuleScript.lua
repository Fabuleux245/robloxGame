-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:23
-- Luau version 6, Types version 3
-- Time taken: 0.001174 seconds

local tbl_upvr = {2, 10}
local tbl_upvw = {}
local module = {}
local function _(arg1, arg2, arg3) -- Line 11, Named "createDelayedTask"
	local var4_upvw = false
	task.delay(arg1, function() -- Line 14
		--[[ Upvalues[3]:
			[1]: var4_upvw (read and write)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
		]]
		if not var4_upvw then
			arg3(arg2)
		end
	end)
	return function() -- Line 19
		--[[ Upvalues[1]:
			[1]: var4_upvw (read and write)
		]]
		var4_upvw = true
	end
end
local function cancelTasks_upvr() -- Line 24, Named "cancelTasks"
	--[[ Upvalues[1]:
		[1]: tbl_upvw (read and write)
	]]
	for _, v in ipairs(tbl_upvw) do
		if v ~= nil then
			v()
		end
	end
	tbl_upvw = {}
end
local Analytics_upvr = require(script.Parent.Analytics)
function module.onPageChanged(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: cancelTasks_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_upvw (read and write)
		[4]: Analytics_upvr (readonly)
	]]
	cancelTasks_upvr()
	for i_2_upvr, v_2 in ipairs(tbl_upvr) do
		local function var18_upvr(arg1_2) -- Line 39
			--[[ Upvalues[2]:
				[1]: Analytics_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			Analytics_upvr.reportPageHeartbeat(arg1_2, arg1)
		end
		local var19_upvw = false
		task.delay(v_2, function() -- Line 14
			--[[ Upvalues[3]:
				[1]: var19_upvw (read and write)
				[2]: var18_upvr (readonly)
				[3]: i_2_upvr (readonly)
			]]
			if not var19_upvw then
				var18_upvr(i_2_upvr)
			end
		end)
		tbl_upvw[i_2_upvr] = function() -- Line 19
			--[[ Upvalues[1]:
				[1]: var19_upvw (read and write)
			]]
			var19_upvw = true
		end
	end
end
return module