-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:02
-- Luau version 6, Types version 3
-- Time taken: 0.003045 seconds

local module = {}
local Parent = script.Parent.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local React = require(Parent.React)
local tbl_upvr = {
	__value = "nil placeholder";
}
local useContext_upvr = React.useContext
local getApolloContext_upvr = require(script.Parent.Parent.Parent.context).getApolloContext
local useReducer_upvr = React.useReducer
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local useRef_upvr = React.useRef
local QueryData_upvr = require(script.Parent.Parent.Parent.data).QueryData
local Promise_upvr = require(Parent.Promise)
local useDeepMemo_upvr = require(script.Parent.useDeepMemo).useDeepMemo
local useAfterFastRefresh_upvr = require(script.Parent.useAfterFastRefresh).useAfterFastRefresh
local useEffect_upvr = React.useEffect
function module.useBaseQuery(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[12]:
		[1]: useContext_upvr (readonly)
		[2]: getApolloContext_upvr (readonly)
		[3]: useReducer_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: useRef_upvr (readonly)
		[7]: QueryData_upvr (readonly)
		[8]: Promise_upvr (readonly)
		[9]: useDeepMemo_upvr (readonly)
		[10]: useAfterFastRefresh_upvr (readonly)
		[11]: useEffect_upvr (readonly)
		[12]: tbl_upvr (readonly)
	]]
	if arg3 == nil then
		local var18_upvw = false
	end
	local var7_result1_upvr = useContext_upvr(getApolloContext_upvr())
	local useReducer_upvr_result1, useReducer_upvr_result2_upvr = useReducer_upvr(function(arg1_2) -- Line 58
		return arg1_2 + 1
	end, 0)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl.query = arg1
		local tbl = {}
		return Object_upvr.assign({}, arg2, tbl)
	end
	if not Boolean_upvr.toJSBoolean(arg2) or not INLINED() then
		local tbl_3_upvr = {}
		tbl_3_upvr.query = arg1
	end
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	tbl = useRef_upvr_result1_upvr.current
	local var26 = tbl
	if not var26 then
		local var28_upvw
		var26 = (function() -- Line 66
			--[[ Upvalues[8]:
				[1]: useRef_upvr_result1_upvr (readonly)
				[2]: QueryData_upvr (copied, readonly)
				[3]: tbl_3_upvr (readonly)
				[4]: var7_result1_upvr (readonly)
				[5]: Boolean_upvr (copied, readonly)
				[6]: var28_upvw (read and write)
				[7]: Promise_upvr (copied, readonly)
				[8]: useReducer_upvr_result2_upvr (readonly)
			]]
			useRef_upvr_result1_upvr.current = QueryData_upvr.new({
				options = tbl_3_upvr;
				context = var7_result1_upvr;
				onNewData = function(arg1_3) -- Line 70, Named "onNewData"
					--[[ Upvalues[5]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: var28_upvw (copied, read and write)
						[3]: Promise_upvr (copied, readonly)
						[4]: useRef_upvr_result1_upvr (copied, readonly)
						[5]: useReducer_upvr_result2_upvr (copied, readonly)
					]]
					if not Boolean_upvr.toJSBoolean(var28_upvw:ssrInitiated()) then
						Promise_upvr.delay(0):andThen(function() -- Line 78
							--[[ Upvalues[2]:
								[1]: useRef_upvr_result1_upvr (copied, readonly)
								[2]: useReducer_upvr_result2_upvr (copied, readonly)
							]]
							if useRef_upvr_result1_upvr.current ~= nil and useRef_upvr_result1_upvr.current.isMounted then
								return useReducer_upvr_result2_upvr(nil)
							end
						end)
					else
						useReducer_upvr_result2_upvr(nil)
					end
				end;
			})
			return useRef_upvr_result1_upvr.current
		end)()
	end
	var28_upvw = var26
	local var31_upvw = var28_upvw
	var31_upvw:setOptions(tbl_3_upvr)
	var31_upvw.context = var7_result1_upvr
	local module_2 = {
		options = Object_upvr.assign({}, tbl_3_upvr, {
			onError = Object_upvr.None;
			onCompleted = Object_upvr.None;
		});
		context = var7_result1_upvr;
		tick = useReducer_upvr_result1;
	}
	local function var34() -- Line 114
		--[[ Upvalues[2]:
			[1]: var18_upvw (read and write)
			[2]: var31_upvw (read and write)
		]]
		if var18_upvw then
			return var31_upvw:executeLazy()
		end
		return var31_upvw:execute()
	end
	if var18_upvw then
		var34 = useDeepMemo_upvr(var34, module_2)[2]
	else
		var34 = useDeepMemo_upvr(var34, module_2)
	end
	if _G.__DEV__ then
		useAfterFastRefresh_upvr(useReducer_upvr_result2_upvr)
	end
	useEffect_upvr(function() -- Line 131
		--[[ Upvalues[2]:
			[1]: var31_upvw (read and write)
			[2]: useRef_upvr_result1_upvr (readonly)
		]]
		return function() -- Line 132
			--[[ Upvalues[2]:
				[1]: var31_upvw (copied, read and write)
				[2]: useRef_upvr_result1_upvr (copied, readonly)
			]]
			var31_upvw:cleanup()
			useRef_upvr_result1_upvr.current = nil
		end
	end, {})
	local tbl_2 = {}
	if var34.loading == nil or not var34.loading then
	end
	if var34.networkStatus == nil or not var34.networkStatus then
	end
	if var34.error == nil or not var34.error then
	end
	if var34.data == nil or not var34.data then
	end
	tbl_2[1] = tbl_upvr
	tbl_2[2] = tbl_upvr
	tbl_2[3] = tbl_upvr
	tbl_2[4] = tbl_upvr
	useEffect_upvr(function() -- Line 140
		--[[ Upvalues[2]:
			[1]: var31_upvw (read and write)
			[2]: var18_upvw (read and write)
		]]
		return var31_upvw:afterExecute({
			lazy = var18_upvw;
		})
	end, tbl_2)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return useDeepMemo_upvr(var34, module_2)
end
return module