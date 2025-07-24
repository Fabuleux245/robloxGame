-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:59
-- Luau version 6, Types version 3
-- Time taken: 0.002239 seconds

local module = {}
local Parent = script.Parent.Parent.Parent.Parent
local React = require(Parent.React)
local useContext_upvr = React.useContext
local getApolloContext_upvr = require(script.Parent.Parent.context).getApolloContext
local useState_upvr = React.useState
local Object_upvr = require(Parent.LuauPolyfill).Object
local useRef_upvr = React.useRef
local MutationData_upvr = require(script.Parent.Parent.data).MutationData
local useEffect_upvr = React.useEffect
function module.useMutation(arg1, arg2) -- Line 40
	--[[ Upvalues[7]:
		[1]: useContext_upvr (readonly)
		[2]: getApolloContext_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: useRef_upvr (readonly)
		[6]: MutationData_upvr (readonly)
		[7]: useEffect_upvr (readonly)
	]]
	local useContext_upvr_result1_upvr = useContext_upvr(getApolloContext_upvr())
	local tbl = {
		called = false;
	}
	local var14_upvr = false
	tbl.loading = var14_upvr
	local useState_upvr_result1_upvr, var7_result2_upvr = useState_upvr(tbl)
	if arg2 then
		var14_upvr = Object_upvr.assign
		local tbl_2 = {}
		tbl_2.mutation = arg1
		var14_upvr = var14_upvr({}, arg2, tbl_2)
	else
		var14_upvr = {}
		var14_upvr.mutation = arg1
	end
	local var9_result1_upvr = useRef_upvr(nil)
	local getMutationDataRef_result1_upvr = (function() -- Line 52, Named "getMutationDataRef"
		--[[ Upvalues[6]:
			[1]: var9_result1_upvr (readonly)
			[2]: MutationData_upvr (copied, readonly)
			[3]: var14_upvr (readonly)
			[4]: useContext_upvr_result1_upvr (readonly)
			[5]: useState_upvr_result1_upvr (readonly)
			[6]: var7_result2_upvr (readonly)
		]]
		if not var9_result1_upvr.current then
			var9_result1_upvr.current = MutationData_upvr.new({
				options = var14_upvr;
				context = useContext_upvr_result1_upvr;
				result = useState_upvr_result1_upvr;
				setResult = function(arg1_2, arg2_2) -- Line 58, Named "setResult"
					--[[ Upvalues[1]:
						[1]: var7_result2_upvr (copied, readonly)
					]]
					var7_result2_upvr(arg2_2)
					return nil
				end;
			})
		end
		return var9_result1_upvr.current
	end)()
	getMutationDataRef_result1_upvr:setOptions(var14_upvr)
	getMutationDataRef_result1_upvr.context = useContext_upvr_result1_upvr
	useEffect_upvr(function() -- Line 72
		--[[ Upvalues[1]:
			[1]: getMutationDataRef_result1_upvr (readonly)
		]]
		return getMutationDataRef_result1_upvr:afterExecute()
	end)
	return getMutationDataRef_result1_upvr:execute(useState_upvr_result1_upvr)
end
return module