-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:16
-- Luau version 6, Types version 3
-- Time taken: 0.002064 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local function _(arg1, arg2) -- Line 25, Named "alreadyExists"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	return not not Boolean_upvr.toJSBoolean(Array_upvr.find(arg1, function(arg1_2) -- Line 26
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var7
		if arg1_2.name.value ~= arg2.name.value then
			var7 = false
		else
			var7 = true
		end
		return var7
	end))
end
local compareNodes_upvr = require(Parent.Utils).compareNodes
function module.mergeNamedTypeArray(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: compareNodes_upvr (readonly)
	]]
	if arg1 ~= nil then
	else
	end
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	local module_2_upvr = {}
	local function var18(arg1_5) -- Line 44
		--[[ Upvalues[3]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: module_2_upvr (readonly)
			[3]: Array_upvr (copied, readonly)
		]]
		return not Boolean_upvr.toJSBoolean(not not Boolean_upvr.toJSBoolean(Array_upvr.find(module_2_upvr, function(arg1_6) -- Line 26
			--[[ Upvalues[1]:
				[1]: arg1_5 (readonly)
			]]
			local var21
			if arg1_6.name.value ~= arg1_5.name.value then
				var21 = false
			else
				var21 = true
			end
			return var21
		end)))
	end
	if {} then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if Boolean_upvr.toJSBoolean(({}).sort) then
			Array_upvr.sort(Array_upvr.concat({}, {}, Array_upvr.filter({}, var18)), compareNodes_upvr)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Array_upvr.concat({}, {}, Array_upvr.filter({}, var18))
end
return module