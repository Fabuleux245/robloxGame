-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:04
-- Luau version 6, Types version 3
-- Time taken: 0.001459 seconds

local isReactComponent_upvr = require(script.Parent.isReactComponent)
local Cryo_upvr = require(script:FindFirstAncestor("UsageTracker").Parent.Cryo)
local UsageGraph_upvr = require(script.Parent.UsageGraph)
return function(arg1, arg2, arg3) -- Line 11, Named "trackMemberAccess"
	--[[ Upvalues[3]:
		[1]: isReactComponent_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: UsageGraph_upvr (readonly)
	]]
	local tbl_upvr = {}
	local var5_upvr = arg3
	if not var5_upvr then
		var5_upvr = isReactComponent_upvr
	end
	local tbl_upvr_2 = {}
	local function wrap_upvr(arg1_2, arg2_2) -- Line 17, Named "wrap"
		--[[ Upvalues[5]:
			[1]: var5_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: wrap_upvr (readonly)
			[5]: Cryo_upvr (copied, readonly)
		]]
		local module_2_upvr = {}
		for i, v in arg2_2 do
			if i ~= "__index" and typeof(i) == "string" then
				if var5_upvr(v) then
					tbl_upvr[arg1_2..'.'..i] = {}
					;({})[i] = v
				elseif typeof(v) == "table" and not tbl_upvr_2[v] then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_2_upvr[i] = wrap_upvr(arg1_2..'.'..i, v)
				else
					module_2_upvr[i] = v
				end
				tbl_upvr_2[v] = true
			end
		end
		local module = {}
		local tbl_upvr_3 = {}
		function module.__index(arg1_3, arg2_3) -- Line 41
			--[[ Upvalues[5]:
				[1]: tbl_upvr_3 (readonly)
				[2]: module_2_upvr (readonly)
				[3]: arg1_2 (readonly)
				[4]: tbl_upvr (copied, readonly)
				[5]: Cryo_upvr (copied, readonly)
			]]
			local var12 = tbl_upvr_3[arg2_3]
			if not var12 then
				return rawget(module_2_upvr, arg2_3)
			end
			local var13 = arg1_2..'.'..arg2_3
			local NEVER_2, NEVER = debug.info(2, "sl")
			tbl_upvr[var13] = Cryo_upvr.List.join(tbl_upvr[var13], {{
				dmPath = NEVER_2;
				lineNumber = NEVER;
			}})
			return var12
		end
		return setmetatable(module_2_upvr, module)
	end
	local wrap_result1 = wrap_upvr(arg1, arg2)
	wrap_result1[UsageGraph_upvr.UsageGraphKey] = tbl_upvr
	return wrap_result1
end