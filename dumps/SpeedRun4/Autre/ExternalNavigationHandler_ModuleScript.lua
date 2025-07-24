-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:05
-- Luau version 6, Types version 3
-- Time taken: 0.003190 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local useRef_upvr = React.useRef
local useEffect_upvr = React.useEffect
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local usePrevious_upvr = RoactUtils.Hooks.usePrevious
function ExternalNavigationHandler(arg1) -- Line 25
	--[[ Upvalues[4]:
		[1]: useRef_upvr (readonly)
		[2]: useEffect_upvr (readonly)
		[3]: dependencyArray_upvr (readonly)
		[4]: usePrevious_upvr (readonly)
	]]
	local function _() -- Line 26
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var9 = false
		if arg1.requestId ~= arg1.completedRequestId then
			var9 = arg1.screen
		end
		return var9
	end
	local var4_result1_upvr = useRef_upvr({})
	local function var11_upvr() -- Line 32
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var4_result1_upvr (readonly)
		]]
		local screen = arg1.screen
		local var13 = arg1.navigationByScreen[screen]
		if var13 then
			var13(arg1.params)
		else
			assert(var4_result1_upvr.current, "Queue for ExternalNavigationHandler can't be nil")
			local var14 = var4_result1_upvr.current[screen]
			if not var14 then
				var14 = {}
			end
			table.insert(var14, arg1.params)
			var4_result1_upvr.current[screen] = var14
		end
		arg1.completeExternalNavigation(arg1.requestId)
	end
	useEffect_upvr(function() -- Line 50
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var11_upvr (readonly)
		]]
		local var16 = false
		if arg1.requestId ~= arg1.completedRequestId then
			var16 = arg1.screen
		end
		if var16 then
			var11_upvr()
		end
	end, dependencyArray_upvr(arg1.requestId, arg1.completedRequestId, arg1.screen))
	local usePrevious_upvr_result1_upvr = usePrevious_upvr(arg1.navigationByScreen)
	useEffect_upvr(function() -- Line 58
		--[[ Upvalues[3]:
			[1]: var4_result1_upvr (readonly)
			[2]: usePrevious_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		assert(var4_result1_upvr.current, "Queue for ExternalNavigationHandler can't be nil")
		if usePrevious_upvr_result1_upvr == nil then
		else
			for i, v in pairs(var4_result1_upvr.current) do
				assert(usePrevious_upvr_result1_upvr, "")
				local var38 = arg1.navigationByScreen[i]
				if usePrevious_upvr_result1_upvr[i] ~= var38 and var38 then
					for _, v_2 in ipairs(v) do
						var38(v_2)
					end
					var4_result1_upvr.current[i] = nil
				end
			end
		end
	end, dependencyArray_upvr(arg1.navigationByScreen))
	return nil
end
return React.memo(ExternalNavigationHandler)