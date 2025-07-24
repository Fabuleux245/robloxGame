-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:10
-- Luau version 6, Types version 3
-- Time taken: 0.003415 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local any_config_result1_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({})
local StatusCodesToRetry_upvr = require(script.Parent.StatusCodesToRetry)
local function _(arg1) -- Line 10, Named "shouldRetryRequest"
	--[[ Upvalues[2]:
		[1]: any_config_result1_upvr (readonly)
		[2]: StatusCodesToRetry_upvr (readonly)
	]]
	if arg1.error then
		local any_getDeepValue_result1 = any_config_result1_upvr.Dictionary.getDeepValue(arg1, "error.graphQLErrors")
		if any_getDeepValue_result1 and any_getDeepValue_result1[1] then
			return StatusCodesToRetry_upvr[any_config_result1_upvr.Dictionary.getDeepValue(any_getDeepValue_result1[1], "extensions.status")] or false
		end
	end
	return false
end
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 22, Named "useApolloAutoRetry"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: any_config_result1_upvr (readonly)
		[3]: StatusCodesToRetry_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(0)
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(false)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = any_useState_result1_upvr_2
	tbl[3] = any_useState_result1_upvr
	React_upvr.useEffect(function() -- Line 26
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: any_config_result1_upvr (copied, readonly)
			[3]: StatusCodesToRetry_upvr (copied, readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: any_useState_result1_upvr_2 (readonly)
			[7]: any_useState_result2_upvr (readonly)
			[8]: any_useState_result2_upvr_2 (readonly)
		]]
		local var16 = arg1
		if var16.error then
			local any_getDeepValue_result1_3 = any_config_result1_upvr.Dictionary.getDeepValue(var16, "error.graphQLErrors")
			if any_getDeepValue_result1_3 and any_getDeepValue_result1_3[1] then
				-- KONSTANTWARNING: GOTO [28] #24
			end
		end
		if false then
			if any_useState_result1_upvr < arg2.retryCount and not any_useState_result1_upvr_2 then
				any_useState_result2_upvr(true)
				task.delay(2 ^ any_useState_result1_upvr + math.random(), function() -- Line 30
					--[[ Upvalues[4]:
						[1]: arg1 (copied, readonly)
						[2]: any_useState_result2_upvr (copied, readonly)
						[3]: any_useState_result2_upvr_2 (copied, readonly)
						[4]: any_useState_result1_upvr (copied, readonly)
					]]
					arg1:refetch()
					any_useState_result2_upvr(false)
					any_useState_result2_upvr_2(any_useState_result1_upvr + 1)
				end)
			end
		end
	end, tbl)
	local module = {}
	module[1] = arg1
	module[2] = any_useState_result1_upvr
	return React_upvr.useMemo(function() -- Line 38
		--[[ Upvalues[6]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_config_result1_upvr (copied, readonly)
			[4]: StatusCodesToRetry_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: arg2 (readonly)
		]]
		local module_3 = {}
		local var25 = arg1
		local var26
		if var25.error then
			local any_getDeepValue_result1_2 = any_config_result1_upvr.Dictionary.getDeepValue(var25, "error.graphQLErrors")
			if any_getDeepValue_result1_2 and any_getDeepValue_result1_2[1] then
				var26 = StatusCodesToRetry_upvr[any_config_result1_upvr.Dictionary.getDeepValue(any_getDeepValue_result1_2[1], "extensions.status")] or false
				-- KONSTANTWARNING: GOTO [35] #29
			end
		end
		var26 = false
		if var26 then
			if any_useState_result1_upvr >= arg2.retryCount then
				var26 = false
			else
				var26 = true
			end
		end
		module_3.isRetrying = var26
		var26 = any_useState_result1_upvr
		module_3.retryCount = var26
		return Cryo_upvr.Dictionary.join(arg1, module_3)
	end, module)
end