-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:58
-- Luau version 6, Types version 3
-- Time taken: 0.001868 seconds

local invariant_upvr = require(script.Parent.Parent.utils.invariant)
local NavigationActions_upvr = require(script.Parent.Parent.NavigationActions)
return function(arg1) -- Line 4
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: NavigationActions_upvr (readonly)
	]]
	return {
		goBack = function(arg1_2) -- Line 8, Named "goBack"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: invariant_upvr (copied, readonly)
				[3]: NavigationActions_upvr (copied, readonly)
			]]
			if arg1_2 == nil then
				local var7 = arg1
				if var7.key then
					if type(arg1.key) ~= "string" then
						var7 = false
					else
						var7 = true
					end
					invariant_upvr(var7, ".goBack(): key should be a string")
				end
			end
			return NavigationActions_upvr.back({
				key = arg1.key;
			})
		end;
		navigate = function(arg1_3, arg2, arg3) -- Line 19, Named "navigate"
			--[[ Upvalues[2]:
				[1]: NavigationActions_upvr (copied, readonly)
				[2]: invariant_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
			local var9
			if type(arg1_3) == "string" then
				var9 = NavigationActions_upvr
				var9 = {}
				var9.routeName = arg1_3
				var9.params = arg2
				var9.action = arg3
				return var9.navigate(var9)
			end
			if type(arg1_3) ~= "table" then
				var9 = false
			else
				var9 = true
			end
			invariant_upvr(var9, ".navigate(): navigateTo must be a string or table")
			if arg2 ~= nil then
				var9 = false
				-- KONSTANTWARNING: GOTO [36] #28
			end
			-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [35] 27. Error Block 25 start (CF ANALYSIS FAILED)
			var9 = true
			invariant_upvr(var9, ".navigate(): params can only be provided with a string navigateTo value")
			if arg3 ~= nil then
				var9 = false
			else
				var9 = true
			end
			invariant_upvr(var9, ".navigate(): child action can only be provided with a string navigateTo value")
			var9 = NavigationActions_upvr
			var9 = arg1_3
			do
				return var9.navigate(var9)
			end
			-- KONSTANTERROR: [35] 27. Error Block 25 end (CF ANALYSIS FAILED)
		end;
		setParams = function(arg1_4) -- Line 36, Named "setParams"
			--[[ Upvalues[3]:
				[1]: invariant_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: NavigationActions_upvr (copied, readonly)
			]]
			local var10
			if type(arg1.key) ~= "string" then
				var10 = false
			else
				var10 = true
			end
			invariant_upvr(var10, ".setParams(): cannot be called by the root navigator")
			var10 = NavigationActions_upvr
			var10 = {}
			var10.params = arg1_4
			var10.key = arg1.key
			return var10.setParams(var10)
		end;
	}
end