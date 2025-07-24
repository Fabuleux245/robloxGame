-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:32
-- Luau version 6, Types version 3
-- Time taken: 0.001445 seconds

local RunService_upvr = game:GetService("RunService")
function assertIsType(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var2 = _G
		return var2.__TESTEZ_RUNNING_TEST__
	end
	if RunService_upvr:IsStudio() or INLINED() then
		if typeof(arg1) ~= arg2 then
			var2 = false
		else
			var2 = true
		end
		assert(var2, string.format("expects %s to be a %s! it was: %s", arg3, arg2, typeof(arg1)))
	end
end
local function urlDecode_upvr(arg1) -- Line 14, Named "urlDecode"
	assertIsType(arg1, "string", "input")
	return string.gsub(string.gsub(arg1, "%%(%x%x)", function(arg1_2) -- Line 16
		return string.char(tonumber(arg1_2, 16))
	end), '+', ' ')
end
local StringSplit_upvr = require(script.Parent.StringSplit)
return function(arg1, arg2) -- Line 36, Named "ParseQuery"
	--[[ Upvalues[2]:
		[1]: StringSplit_upvr (readonly)
		[2]: urlDecode_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
	if arg1 ~= nil then
		assertIsType(arg1, "string", "input")
	end
	if arg2 ~= nil then
		assertIsType(arg2, "function", "listKeyMapper")
	end
	if type(arg2) ~= "function" then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 22. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 22. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [117] 91. Error Block 31 start (CF ANALYSIS FAILED)
	do
		return {}
	end
	-- KONSTANTERROR: [117] 91. Error Block 31 end (CF ANALYSIS FAILED)
end