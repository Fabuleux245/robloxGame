-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:30
-- Luau version 6, Types version 3
-- Time taken: 0.003312 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local function _(arg1) -- Line 3, Named "rine"
	local var2 = arg1
	if var2 then
		var2 = false
		if 0 < #arg1 then
			var2 = arg1
		end
	end
	return var2
end
local function _(arg1) -- Line 6, Named "rit"
	local var3 = false
	if type(arg1) == "table" then
		var3 = arg1
	end
	return var3
end
local function _() -- Line 10, Named "dont_crash"
	if math.random() <= 0.004 then
		wait()
	end
	return true
end
local function var4_upvr() -- Line 18
end
local function _(arg1) -- Line 19
	return string.gsub(arg1, "([%^%$%(%)%%%.%[%]%*%+%-%?])", "%%".."%1")
end
local tostring_upvr = tostring
local tbl_upvr = {}
local var9_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var9_upvr = var4_upvr
	return var9_upvr
end
if not tbl_upvr.silent or not INLINED() then
	function var9_upvr(arg1, arg2, ...) -- Line 26
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if arg1 == 'i' then
		else
		end
		print("[HTMLParser]".." [%s] ":format(arg1:upper())..arg2:format(...)..(tbl_upvr.nonl or '\n'))
	end
end
if not tbl_upvr.noerr or not var4_upvr then
	local function var10_upvr(arg1, ...) -- Line 32
		--[[ Upvalues[1]:
			[1]: var9_upvr (readonly)
		]]
		var9_upvr('e', arg1, ...)
	end
end
if not tbl_upvr.noout or not var4_upvr then
	local function _(arg1, ...) -- Line 36
		--[[ Upvalues[1]:
			[1]: var9_upvr (readonly)
		]]
		var9_upvr('i', arg1, ...)
	end
end
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	return function(arg1, ...) -- Line 41
		--[[ Upvalues[3]:
			[1]: var9_upvr (readonly)
			[2]: var4_upvr (readonly)
			[3]: tostring_upvr (readonly)
		]]
		var9_upvr('d', arg1:gsub("#LINE#", tostring_upvr(var4_upvr(3))), ...)
	end
end
if not tbl_upvr.debug or not INLINED_2() then
end
local module = {}
local char_upvr = string.char
local ElementNode_upvr = require(script.ElementNode)
local voidelements_upvr = require(script.voidelements)
function module.parse(arg1, arg2, arg3) -- Line 53
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: tostring_upvr (readonly)
		[3]: char_upvr (readonly)
		[4]: var4_upvr (readonly)
		[5]: var10_upvr (readonly)
		[6]: ElementNode_upvr (readonly)
		[7]: voidelements_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var17 = tbl_upvr
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 9. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 9. Error Block 4 end (CF ANALYSIS FAILED)
end
return module