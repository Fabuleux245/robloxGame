-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:22
-- Luau version 6, Types version 3
-- Time taken: 0.001605 seconds

local Parent = script.Parent.Parent
local PolicyProvider_upvr = require(Parent.PolicyProvider)
local Cryo_upvr = require(Parent.Cryo)
local function mergePolicies_upvr(arg1, arg2) -- Line 15, Named "mergePolicies"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {}
	for _, v in ipairs(arg2) do
		module = Cryo_upvr.Dictionary.join(module, v(arg1))
	end
	return module
end
local React_upvr = require(Parent.React)
local Logger_upvr = PolicyProvider_upvr.Logger
return function(arg1) -- Line 25
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: PolicyProvider_upvr (readonly)
		[3]: mergePolicies_upvr (readonly)
		[4]: Logger_upvr (readonly)
	]]
	assert(arg1, "expected getPolicyImpl")
	return function(arg1_2) -- Line 28, Named "useAppPolicy"
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: PolicyProvider_upvr (copied, readonly)
			[3]: mergePolicies_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Logger_upvr (copied, readonly)
		]]
		local any_useContext_result1_upvr = React_upvr.useContext(PolicyProvider_upvr.AppPolicyContext)
		assert(any_useContext_result1_upvr, "Not a descendent of PolicyProvider")
		local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 32, Named "getInitialPolicy"
			--[[ Upvalues[4]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: mergePolicies_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: Logger_upvr (copied, readonly)
			]]
			if any_useContext_result1_upvr.staticExternalPolicy then
				return mergePolicies_upvr(any_useContext_result1_upvr.staticExternalPolicy, any_useContext_result1_upvr.presentationPolicy)
			end
			local any_read_result1 = arg1.read()
			if any_read_result1 then
				return mergePolicies_upvr(any_read_result1, any_useContext_result1_upvr.presentationPolicy)
			end
			Logger_upvr:trace("No app policy data available")
			return mergePolicies_upvr({}, any_useContext_result1_upvr.presentationPolicy)
		end)
		React_upvr.useEffect(function() -- Line 50
			--[[ Upvalues[5]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: Logger_upvr (copied, readonly)
				[4]: any_useState_result2_upvr (readonly)
				[5]: mergePolicies_upvr (copied, readonly)
			]]
			local var20_upvw
			if not any_useContext_result1_upvr.staticExternalPolicy then
				var20_upvw = arg1.onPolicyChanged(function(arg1_3) -- Line 53
					--[[ Upvalues[4]:
						[1]: Logger_upvr (copied, readonly)
						[2]: any_useState_result2_upvr (copied, readonly)
						[3]: mergePolicies_upvr (copied, readonly)
						[4]: any_useContext_result1_upvr (copied, readonly)
					]]
					Logger_upvr:trace("Received policy update")
					any_useState_result2_upvr(mergePolicies_upvr(arg1_3, any_useContext_result1_upvr.presentationPolicy))
				end)
			end
			return function() -- Line 59
				--[[ Upvalues[1]:
					[1]: var20_upvw (read and write)
				]]
				if var20_upvw then
					var20_upvw:Disconnect()
				end
			end
		end, {any_useContext_result1_upvr})
		return arg1_2(any_useState_result1)
	end
end