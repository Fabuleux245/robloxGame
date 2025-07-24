-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:31
-- Luau version 6, Types version 3
-- Time taken: 0.001063 seconds

local Body_upvr = require(script.Parent.Body).Body
local setmetatable_result1_upvr = setmetatable({}, {
	__index = Body_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
local instanceof_upvr = require(script.Parent.Parent.LuauPolyfill).instanceof
local Headers_upvr = require(script.Parent.Headers).Headers
local AbortSignal_upvr = require(script.Parent.AbortSignal).AbortSignal
function setmetatable_result1_upvr.new(arg1, arg2) -- Line 92
	--[[ Upvalues[5]:
		[1]: instanceof_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: Body_upvr (readonly)
		[4]: Headers_upvr (readonly)
		[5]: AbortSignal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	if not arg2 then
	end
	if type(arg1) == "string" then
		-- KONSTANTWARNING: GOTO [30] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 70 start (CF ANALYSIS FAILED)
	if instanceof_upvr(arg1, setmetatable_result1_upvr) then
		-- KONSTANTWARNING: GOTO [30] #25
	end
	-- KONSTANTERROR: [17] 14. Error Block 70 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_upvr.clone(arg1) -- Line 137
	--[[ Upvalues[1]:
		[1]: setmetatable_result1_upvr (readonly)
	]]
	return setmetatable_result1_upvr.new(arg1)
end
return {
	Request = setmetatable_result1_upvr;
}