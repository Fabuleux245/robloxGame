-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:05
-- Luau version 6, Types version 3
-- Time taken: 0.001531 seconds

local function _(arg1) -- Line 3
	local var3 = false
	if arg1.order ~= nil then
		var3 = not arg1.moderated
		if var3 then
			var3 = not arg1.failed
		end
	end
	return var3
end
return function(arg1, arg2) -- Line 7
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var5
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	var5 = arg2.order
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 56 start (CF ANALYSIS FAILED)
	if arg1.order >= arg2.order then
		var5 = false
	else
		var5 = true
	end
	do
		return var5
	end
	-- KONSTANTERROR: [6] 5. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 51 start (CF ANALYSIS FAILED)
	var5 = false
	-- KONSTANTERROR: [15] 11. Error Block 51 end (CF ANALYSIS FAILED)
end