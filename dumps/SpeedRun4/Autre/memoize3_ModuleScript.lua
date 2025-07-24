-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:30
-- Luau version 6, Types version 3
-- Time taken: 0.003494 seconds

local tbl_5_upvr = {}
local function _(arg1) -- Line 19, Named "replaceNil"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if arg1 == nil then
		return tbl_5_upvr
	end
	return arg1
end
local function _() -- Line 26, Named "newWeakMap"
	return setmetatable({}, {
		__mode = "kv";
	})
end
return {
	memoize3 = function(arg1) -- Line 33, Named "memoize3"
		--[[ Upvalues[1]:
			[1]: tbl_5_upvr (readonly)
		]]
		local var4_upvw
		return function(arg1_2, arg2, arg3) -- Line 36
			--[[ Upvalues[3]:
				[1]: tbl_5_upvr (copied, readonly)
				[2]: var4_upvw (read and write)
				[3]: arg1 (readonly)
			]]
			if arg1_2 == nil then
				local _ = tbl_5_upvr
			else
			end
			if arg2 == nil then
				local _ = tbl_5_upvr
			else
			end
			if arg3 == nil then
			else
			end
			if not var4_upvw then
				var4_upvw = setmetatable({}, {
					__mode = "kv";
				})
			end
			local var18
			if var4_upvw[arg1_2] then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var18 = var4_upvw[arg1_2][arg2]
				if var18 then
					local var19 = var18[arg3]
					if var19 ~= nil then
						if var19 == tbl_5_upvr then
							return nil
						end
						do
							return var19
						end
						-- KONSTANTWARNING: GOTO [59] #47
					end
					-- KONSTANTWARNING: GOTO [59] #47
				end
			else
				local setmetatable_result1_2 = setmetatable({}, {
					__mode = "kv";
				})
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var4_upvw[arg1_2] = setmetatable_result1_2
			end
			if not var18 then
				local tbl = {
					__mode = "kv";
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				setmetatable_result1_2[arg2] = setmetatable({}, tbl)
			end
			tbl = arg1_2
			local var23 = tbl
			local arg1_result1 = arg1(var23, arg2, arg3)
			if arg1_result1 == nil then
				var23 = tbl_5_upvr
			else
				var23 = arg1_result1
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			setmetatable({}, tbl)[arg3] = var23
			return arg1_result1
		end
	end;
}