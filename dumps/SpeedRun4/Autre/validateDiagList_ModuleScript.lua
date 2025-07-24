-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:10
-- Luau version 6, Types version 3
-- Time taken: 0.001299 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local t = dependencies.t
local llama_upvr = dependencies.llama
local isEnum_upvr = require(script.Parent.Parent.Utils.isEnum)
local formatKeyValidationError_upvr = require(script.Parent.formatKeyValidationError)
local var8_upvr = require(script.Parent.formatErrorForIncorrectKey)(t.strictInterface({
	name = t.any;
	counter = t.optional(t.any);
}))
return function(arg1) -- Line 14
	--[[ Upvalues[4]:
		[1]: llama_upvr (readonly)
		[2]: isEnum_upvr (readonly)
		[3]: formatKeyValidationError_upvr (readonly)
		[4]: var8_upvr (readonly)
	]]
	llama_upvr.Dictionary.map(arg1, function(arg1_2, arg2) -- Line 15
		--[[ Upvalues[3]:
			[1]: isEnum_upvr (copied, readonly)
			[2]: formatKeyValidationError_upvr (copied, readonly)
			[3]: var8_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var10
		if isEnum_upvr(arg2) then
			var10 = arg2.rawValue()
		else
			var10 = arg2
		end
		if type(arg1_2.name) ~= "string" then
		else
		end
		assert(true, formatKeyValidationError_upvr("name", "a string", var10))
		if type(arg1_2.counter) ~= "number" then
			if arg1_2.counter ~= nil then
			else
			end
		end
		assert(true, formatKeyValidationError_upvr("counter", "nil or a number", var10))
		assert(var8_upvr(arg1_2, var10))
	end)
	return true
end