-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:56
-- Luau version 6, Types version 3
-- Time taken: 0.001836 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Object_upvr = require(Parent.Parent.LuauPolyfill).Object
local function applyConfig_upvr(arg1, arg2, arg3) -- Line 13, Named "applyConfig"
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local var4 = arg2
	if not var4 then
		var4 = {}
	end
	local var5 = var4
	local type_result1 = type(arg1)
	if type_result1 == "function" then
		return Object_upvr.assign({}, var5, arg1(Object_upvr.assign(table.clone(arg3), {
			navigationOptions = var5;
		})))
	end
	if type_result1 == "table" then
		return Object_upvr.assign(table.clone(var5), arg1)
	end
	return var5
end
local invariant_upvr = require(Parent.utils.invariant)
local getScreenForRouteName_upvr = require(Parent_2.getScreenForRouteName)
local validateScreenOptions_upvr = require(Parent_2.validateScreenOptions)
return function(arg1, arg2) -- Line 32
	--[[ Upvalues[4]:
		[1]: invariant_upvr (readonly)
		[2]: getScreenForRouteName_upvr (readonly)
		[3]: applyConfig_upvr (readonly)
		[4]: validateScreenOptions_upvr (readonly)
	]]
	return function(arg1_2, arg2_2) -- Line 33
		--[[ Upvalues[6]:
			[1]: invariant_upvr (copied, readonly)
			[2]: getScreenForRouteName_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: applyConfig_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: validateScreenOptions_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var13 = arg2_2
		if not var13 then
			var13 = {}
		end
		local state = arg1_2.state
		if type(state.routeName) ~= "string" then
		else
		end
		invariant_upvr(true, "Cannot get config because the route does not have a routeName.")
		local getScreenForRouteName_upvr_result1 = getScreenForRouteName_upvr(arg1, state.routeName)
		local var16 = arg1[state.routeName]
		if var16 ~= getScreenForRouteName_upvr_result1 then
		end
		if type(getScreenForRouteName_upvr_result1) == "table" then
		else
		end
		local tbl = {}
		tbl.navigation = arg1_2
		tbl.screenProps = var13
		local applyConfig_result1 = applyConfig_upvr(var16.navigationOptions, applyConfig_upvr({}, applyConfig_upvr(arg2, {}, tbl), tbl), tbl)
		validateScreenOptions_upvr(applyConfig_result1, state)
		return applyConfig_result1
	end
end