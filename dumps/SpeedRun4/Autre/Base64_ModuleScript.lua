-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:09
-- Luau version 6, Types version 3
-- Time taken: 0.002775 seconds

local module = {
	MakeEncoder = function(arg1, arg2, arg3) -- Line 8, Named "MakeEncoder"
		local module_2 = {}
		for i, v in pairs({'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', arg1 or '+', arg2 or '/', arg3 or '='}) do
			module_2[i] = v:byte()
		end
		return module_2
	end;
}
local any_MakeEncoder_result1_upvr = module.MakeEncoder()
local extract_upvr = bit32.extract
local char_upvr = string.char
local concat_upvr = table.concat
function module.Encode(arg1, arg2, arg3) -- Line 88
	--[[ Upvalues[4]:
		[1]: any_MakeEncoder_result1_upvr (readonly)
		[2]: extract_upvr (readonly)
		[3]: char_upvr (readonly)
		[4]: concat_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var15
	if not var15 then
		var15 = any_MakeEncoder_result1_upvr
	end
	local len = #arg1
	local _ = {}
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [101] 91. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.16]
	;({})[1] = nil
	-- KONSTANTERROR: [101] 91. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 13. Error Block 21 start (CF ANALYSIS FAILED)
	if arg3 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
			-- KONSTANTWARNING: GOTO [101] #91
		end
	else
	end
	-- KONSTANTERROR: [14] 13. Error Block 21 end (CF ANALYSIS FAILED)
end
return module