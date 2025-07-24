-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:23
-- Luau version 6, Types version 3
-- Time taken: 0.001437 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.NoFragmentCyclesRule(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvr_2 = {}
	local tbl_upvr_3 = {}
	local tbl_upvr = {}
	local function detectCycleRecursive_upvr(arg1_2) -- Line 31, Named "detectCycleRecursive"
		--[[ Upvalues[7]:
			[1]: tbl_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvr_3 (readonly)
			[4]: tbl_upvr (readonly)
			[5]: detectCycleRecursive_upvr (readonly)
			[6]: Array_upvr (copied, readonly)
			[7]: GraphQLError_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		if tbl_upvr_2[arg1_2.name.value] then return end
		local value = arg1_2.name.value
		tbl_upvr_2[value] = true
		local any_getFragmentSpreads_result1 = arg1:getFragmentSpreads(arg1_2.selectionSet)
		if #any_getFragmentSpreads_result1 == 0 then return end
		tbl_upvr_3[value] = #tbl_upvr
		local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(any_getFragmentSpreads_result1)
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [106] 84. Error Block 15 start (CF ANALYSIS FAILED)
		table.remove(tbl_upvr)
		-- KONSTANTERROR: [106] 84. Error Block 15 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 27. Error Block 24 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [110.9]
		if nil == nil then
			if table.remove(tbl_upvr) then
				-- KONSTANTWARNING: GOTO [106] #84
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local function INLINED() -- Internal function, doesn't exist in bytecode
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [110.17]
				return nil
			end
			if tbl_upvr == "" or not INLINED() then
			end
		end
		-- KONSTANTERROR: [34] 27. Error Block 24 end (CF ANALYSIS FAILED)
	end
	return {
		OperationDefinition = function() -- Line 82, Named "OperationDefinition"
			return false
		end;
		FragmentDefinition = function(arg1_3, arg2) -- Line 85, Named "FragmentDefinition"
			--[[ Upvalues[1]:
				[1]: detectCycleRecursive_upvr (readonly)
			]]
			detectCycleRecursive_upvr(arg2)
			return false
		end;
	}
end
return module