-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:05
-- Luau version 6, Types version 3
-- Time taken: 0.001951 seconds

local function _(arg1) -- Line 2, Named "numberWithZero"
	local var1
	if arg1 < 10 then
		var1 = '0'
	else
		var1 = ""
	end
	return var1..arg1
end
return function(arg1) -- Line 6, Named "convertTimeStamp"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var2 = math.floor(arg1 - os.time() + tick()) % 86400
	local floored_2 = math.floor(var2 / 3600)
	local var4 = var2 - floored_2 * 3600
	local floored = math.floor(var4 / 60)
	local var6
	if floored_2 < 10 then
		var6 = '0'
	else
		var6 = ""
	end
	if floored < 10 then
		-- KONSTANTWARNING: GOTO [41] #35
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 34. Error Block 22 start (CF ANALYSIS FAILED)
	var6 = ""..floored
	local var7 = var4 - floored * 60
	if var7 < 10 then
	else
	end
	do
		return string.format("%s:%s:%s", var6..floored_2, var6, ""..var7)
	end
	-- KONSTANTERROR: [40] 34. Error Block 22 end (CF ANALYSIS FAILED)
end