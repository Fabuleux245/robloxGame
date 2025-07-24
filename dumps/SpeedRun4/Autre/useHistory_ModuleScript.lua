-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:59
-- Luau version 6, Types version 3
-- Time taken: 0.002893 seconds

local ReactUtils = script:FindFirstAncestor("ReactUtils")
local React_upvr = require(ReactUtils.Parent.React)
local ChangeHistoryService_upvr = game:GetService("ChangeHistoryService")
local LUAU_ANALYZE_ERROR_upvr = ReactUtils.LUAU_ANALYZE_ERROR
return function(arg1, arg2, arg3) -- Line 11, Named "useHistory"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ChangeHistoryService_upvr (readonly)
		[3]: LUAU_ANALYZE_ERROR_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(arg1)
	local any_useRef_result1_upvr = React_upvr.useRef({})
	local any_useRef_result1_upvr_3 = React_upvr.useRef({})
	React_upvr.useEffect(function() -- Line 16
		--[[ Upvalues[6]:
			[1]: ChangeHistoryService_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
			[4]: LUAU_ANALYZE_ERROR_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr_2 (readonly)
			[6]: arg2 (readonly)
		]]
		local any_Connect_result1_upvr_2 = ChangeHistoryService_upvr.OnUndo:Connect(function(arg1_2) -- Line 17
			--[[ Upvalues[5]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_3 (copied, readonly)
				[3]: LUAU_ANALYZE_ERROR_upvr (copied, readonly)
				[4]: any_useRef_result1_upvr_2 (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			local current = any_useRef_result1_upvr.current
			local current_5 = any_useRef_result1_upvr_3.current
			local var12
			if current == nil then
				var12 = false
			else
				var12 = true
			end
			assert(var12, LUAU_ANALYZE_ERROR_upvr)
			if current_5 == nil then
				var12 = false
			else
				var12 = true
			end
			assert(var12, LUAU_ANALYZE_ERROR_upvr)
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var12 = current[arg1_2]
				return #var12 == 0
			end
			if not current[arg1_2] or INLINED() then
			else
				if not current_5[arg1_2] then
					current_5[arg1_2] = {}
				end
				var12 = current[arg1_2]
				local len = #var12
				var12 = current[arg1_2][len]
				table.insert(current_5[arg1_2], any_useRef_result1_upvr_2.current)
				table.remove(current[arg1_2], len)
				any_useRef_result1_upvr_2.current = var12
				arg2(var12)
				any_useRef_result1_upvr.current = current
				any_useRef_result1_upvr_3.current = current_5
			end
		end)
		local any_Connect_result1_upvr = ChangeHistoryService_upvr.OnRedo:Connect(function(arg1_3) -- Line 48
			--[[ Upvalues[5]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_3 (copied, readonly)
				[3]: LUAU_ANALYZE_ERROR_upvr (copied, readonly)
				[4]: any_useRef_result1_upvr_2 (copied, readonly)
				[5]: arg2 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			local current_3 = any_useRef_result1_upvr.current
			local current_2 = any_useRef_result1_upvr_3.current
			local var17
			if current_3 == nil then
				var17 = false
			else
				var17 = true
			end
			assert(var17, LUAU_ANALYZE_ERROR_upvr)
			if current_2 == nil then
				var17 = false
				-- KONSTANTWARNING: GOTO [20] #15
			end
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 14. Error Block 28 start (CF ANALYSIS FAILED)
			var17 = true
			assert(var17, LUAU_ANALYZE_ERROR_upvr)
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var17 = current_2[arg1_3]
				return #var17 == 0
			end
			if not current_2[arg1_3] or INLINED_2() then
			else
				var17 = current_2[arg1_3]
				local len_2 = #var17
				var17 = current_2[arg1_3][len_2]
				table.insert(current_3[arg1_3], any_useRef_result1_upvr_2.current)
				table.remove(current_2[arg1_3], len_2)
				if var17 == nil then
				else
				end
				assert(true, LUAU_ANALYZE_ERROR_upvr)
				any_useRef_result1_upvr_2.current = var17
				arg2(var17)
				any_useRef_result1_upvr.current = current_3
				any_useRef_result1_upvr_3.current = current_2
				-- KONSTANTERROR: [19] 14. Error Block 28 end (CF ANALYSIS FAILED)
			end
		end)
		return function() -- Line 76
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr_2 (readonly)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr_2:Disconnect()
			any_Connect_result1_upvr:Disconnect()
		end
	end, arg3)
	React_upvr.useEffect(function() -- Line 82
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
		]]
		any_useRef_result1_upvr.current = {}
		any_useRef_result1_upvr_3.current = {}
	end, arg3)
	return React_upvr.useCallback(function(arg1_4, arg2_2) -- Line 87
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: LUAU_ANALYZE_ERROR_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
			[4]: ChangeHistoryService_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr_2 (readonly)
		]]
		local current_4 = any_useRef_result1_upvr.current
		local var25
		if current_4 == nil then
			var25 = false
		else
			var25 = true
		end
		assert(var25, LUAU_ANALYZE_ERROR_upvr)
		if not current_4[arg1_4] then
			current_4[arg1_4] = {}
		end
		var25 = {}
		any_useRef_result1_upvr_3.current = var25
		ChangeHistoryService_upvr:SetWaypoint(arg1_4)
		var25 = any_useRef_result1_upvr_2.current
		if typeof(var25) == "table" then
			var25 = current_4[arg1_4]
			table.insert(var25, table.clone(any_useRef_result1_upvr_2.current))
		else
			var25 = current_4[arg1_4]
			table.insert(var25, any_useRef_result1_upvr_2.current)
		end
		any_useRef_result1_upvr_2.current = arg2_2
		any_useRef_result1_upvr.current = current_4
	end, arg3)
end