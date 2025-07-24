-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:20
-- Luau version 6, Types version 3
-- Time taken: 0.001204 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local instanceof_upvr = LuauPolyfill.instanceof
local Error_upvr = LuauPolyfill.Error
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local Array_upvr = LuauPolyfill.Array
local GraphQLError_upvr = require(Parent_2.GraphQLError).GraphQLError
return {
	locatedError = function(arg1, arg2, arg3) -- Line 30, Named "locatedError"
		--[[ Upvalues[5]:
			[1]: instanceof_upvr (readonly)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
			[4]: Array_upvr (readonly)
			[5]: GraphQLError_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		if instanceof_upvr(arg1, Error_upvr) then
			-- KONSTANTWARNING: GOTO [72] #56
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 9. Error Block 25 start (CF ANALYSIS FAILED)
		local var9
		if typeof(arg1) == "table" and typeof(arg1.message) == "string" and arg1.stack ~= nil then
			var9 = Error_upvr.new(arg1.message)
		elseif typeof(arg1) == "table" and typeof(arg1.error) == "string" then
			var9 = Error_upvr.new("Unexpected error value: "..inspect_upvr(arg1.error))
		else
			var9 = Error_upvr.new("Unexpected error value: "..inspect_upvr(arg1))
		end
		if Array_upvr.isArray(var9.path) then
			return var9
		end
		do
			return GraphQLError_upvr.new(var9.message, var9.nodes or arg2, var9.source, var9.positions, arg3, var9)
		end
		-- KONSTANTERROR: [8] 9. Error Block 25 end (CF ANALYSIS FAILED)
	end;
}