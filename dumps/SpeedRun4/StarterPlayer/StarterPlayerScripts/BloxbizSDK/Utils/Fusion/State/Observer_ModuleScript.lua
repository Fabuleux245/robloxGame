-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:06
-- Luau version 6, Types version 3
-- Time taken: 0.001832 seconds

local tbl = {}
local tbl_2_upvr = {
	__index = tbl;
}
function tbl.update(arg1) -- Line 26
	for _, v in pairs(arg1._changeListeners) do
		task.spawn(v)
	end
	return false
end
local tbl_3_upvr = {}
function tbl.onChange(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local tbl_4_upvr = {}
	arg1._numChangeListeners += 1
	arg1._changeListeners[tbl_4_upvr] = arg2
	tbl_3_upvr[arg1] = true
	local var12_upvw = false
	return function() -- Line 51
		--[[ Upvalues[4]:
			[1]: var12_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: tbl_4_upvr (readonly)
			[4]: tbl_3_upvr (copied, readonly)
		]]
		if var12_upvw then
		else
			var12_upvw = true
			arg1._changeListeners[tbl_4_upvr] = nil
			local var13 = arg1
			var13._numChangeListeners -= 1
			if arg1._numChangeListeners == 0 then
				tbl_3_upvr[arg1] = nil
			end
		end
	end
end
local initDependency_upvr = require(script.Parent.Parent.Dependencies.initDependency)
return function(arg1) -- Line 66, Named "Observer"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: initDependency_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({
		type = "State";
		kind = "Observer";
		dependencySet = {
			[arg1] = true;
		};
		dependentSet = {};
		_changeListeners = {};
		_numChangeListeners = 0;
	}, tbl_2_upvr)
	initDependency_upvr(setmetatable_result1)
	arg1.dependentSet[setmetatable_result1] = true
	return setmetatable_result1
end