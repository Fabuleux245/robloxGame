-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:29
-- Luau version 6, Types version 3
-- Time taken: 0.005805 seconds

local ReactSymbols = require(script.Parent.ReactSymbols)
local roblox = require(script.Parent["ConsolePatchingDev.roblox"])
local describeComponentFrame_upvw
local function _(arg1) -- Line 57, Named "describeOwner"
	if type(arg1) == "function" then
		return debug.info(arg1, 'n')
	end
	if type(arg1) == "table" then
		return tostring(arg1)
	end
	return nil
end
local function describeBuiltInComponentFrame_upvr(arg1, arg2, arg3) -- Line 66, Named "describeBuiltInComponentFrame"
	--[[ Upvalues[1]:
		[1]: describeComponentFrame_upvw (read and write)
	]]
	local var4
	if _G.__DEV__ and arg3 then
		if type(arg3) == "function" then
			var4 = debug.info(arg3, 'n')
		elseif type(arg3) == "table" then
			var4 = tostring(arg3)
		else
			var4 = nil
		end
	end
	return describeComponentFrame_upvw(arg1, arg2, var4)
end
local var5_upvw
if _G.__DEV__ then
	var5_upvw = setmetatable({}, {
		__mode = 'k';
	})
end
local var7_upvw = false
local ReactCurrentDispatcher_upvr = require(script.Parent.ReactSharedInternals).ReactCurrentDispatcher
local disableLogs_upvr = roblox.disableLogs
local reenableLogs_upvr = roblox.reenableLogs
function describeComponentFrame_upvw(arg1, arg2, arg3) -- Line 283, Named "describeComponentFrame"
	local var16
	if _G.__DEV__ and arg2 then
		local fileName = arg2.fileName
		local string_gsub_result1_2 = string.gsub(fileName, "^(.*)[\\/]", "")
		if string.match(string_gsub_result1_2, "^init%.") then
			local string_match_result1 = string.match(fileName, "^(.*)[\\/]")
			if string_match_result1 and #string_match_result1 ~= 0 then
				string_gsub_result1_2 = string.gsub(string_match_result1, "^(.*)[\\/]", "")..'/'..string_gsub_result1_2
			end
		end
		var16 = " (at "..string_gsub_result1_2..':'..arg2.lineNumber..')'
	elseif arg3 then
		var16 = " (created by "..arg3..')'
	end
	return "\n    in "..(arg1 or "Unknown")..var16
end
local var11_upvw = describeComponentFrame_upvw
local function describeClassComponentFrame_upvr(arg1, arg2, arg3) -- Line 316, Named "describeClassComponentFrame"
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	local var20
	if _G.__DEV__ and arg3 then
		if type(arg3) == "function" then
			var20 = debug.info(arg3, 'n')
		elseif type(arg3) == "table" then
			var20 = tostring(arg3)
		else
			var20 = nil
		end
	end
	return var11_upvw(tostring(arg1), arg2, var20)
end
local function describeFunctionComponentFrame_upvw(arg1, arg2, arg3) -- Line 340, Named "describeFunctionComponentFrame"
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	if not arg1 then
		return ""
	end
	if type(arg1) == "function" then
		local func_name = debug.info(arg1, 'n')
	else
	end
	if _G.__DEV__ and arg3 then
		if type(arg3) == "function" then
		elseif type(arg3) == "table" then
		else
		end
	end
	return var11_upvw(tostring(arg1), arg2, nil)
end
local REACT_SUSPENSE_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_TYPE
local REACT_SUSPENSE_LIST_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_LIST_TYPE
local REACT_FORWARD_REF_TYPE_upvr = ReactSymbols.REACT_FORWARD_REF_TYPE
local REACT_MEMO_TYPE_upvr = ReactSymbols.REACT_MEMO_TYPE
local REACT_BLOCK_TYPE_upvr = ReactSymbols.REACT_BLOCK_TYPE
local REACT_LAZY_TYPE_upvr = ReactSymbols.REACT_LAZY_TYPE
local function describeUnknownElementTypeFrameInDEV_upvr(arg1, arg2, arg3) -- Line 387, Named "describeUnknownElementTypeFrameInDEV"
	--[[ Upvalues[10]:
		[1]: describeClassComponentFrame_upvr (readonly)
		[2]: describeFunctionComponentFrame_upvw (read and write)
		[3]: describeBuiltInComponentFrame_upvr (readonly)
		[4]: REACT_SUSPENSE_TYPE_upvr (readonly)
		[5]: REACT_SUSPENSE_LIST_TYPE_upvr (readonly)
		[6]: REACT_FORWARD_REF_TYPE_upvr (readonly)
		[7]: REACT_MEMO_TYPE_upvr (readonly)
		[8]: describeUnknownElementTypeFrameInDEV_upvr (readonly)
		[9]: REACT_BLOCK_TYPE_upvr (readonly)
		[10]: REACT_LAZY_TYPE_upvr (readonly)
	]]
	if not _G.__DEV__ then
		return ""
	end
	if arg1 == nil then
		return ""
	end
	if type(arg1) == "table" and type(arg1.__ctor) == "function" then
		return describeClassComponentFrame_upvr(arg1, arg2, arg3)
	end
	if type(arg1) == "function" then
		return describeFunctionComponentFrame_upvw(arg1, arg2, arg3)
	end
	if type(arg1) == "string" then
		return describeBuiltInComponentFrame_upvr(arg1, arg2, arg3)
	end
	if arg1 == REACT_SUSPENSE_TYPE_upvr then
		return describeBuiltInComponentFrame_upvr("Suspense", arg2, arg3)
	end
	if arg1 == REACT_SUSPENSE_LIST_TYPE_upvr then
		return describeBuiltInComponentFrame_upvr("SuspenseList", arg2, arg3)
	end
	if type(arg1) == "table" then
		local __typeof = arg1["$$typeof"]
		if __typeof == REACT_FORWARD_REF_TYPE_upvr then
			return describeFunctionComponentFrame_upvw(arg1.render, arg2, arg3)
		end
		if __typeof == REACT_MEMO_TYPE_upvr then
			return describeUnknownElementTypeFrameInDEV_upvr(arg1.type, arg2, arg3)
		end
		if __typeof == REACT_BLOCK_TYPE_upvr then
			return describeFunctionComponentFrame_upvw(arg1._render, arg2, arg3)
		end
		if __typeof == REACT_LAZY_TYPE_upvr then
			local _init_upvr = arg1._init
			local _payload_upvr = arg1._payload
			local pcall_result1, pcall_result2_2 = pcall(function() -- Line 446
				--[[ Upvalues[5]:
					[1]: describeUnknownElementTypeFrameInDEV_upvr (copied, readonly)
					[2]: _init_upvr (readonly)
					[3]: _payload_upvr (readonly)
					[4]: arg2 (readonly)
					[5]: arg3 (readonly)
				]]
				describeUnknownElementTypeFrameInDEV_upvr(_init_upvr(_payload_upvr), arg2, arg3)
			end)
			if pcall_result1 then
				return pcall_result2_2
			end
		end
	end
	return ""
end
return {
	describeComponentFrame = var11_upvw;
	describeBuiltInComponentFrame = describeBuiltInComponentFrame_upvr;
	describeNativeComponentFrame = function(arg1, arg2) -- Line 113, Named "describeNativeComponentFrame"
		--[[ Upvalues[6]:
			[1]: var7_upvw (read and write)
			[2]: var5_upvw (read and write)
			[3]: ReactCurrentDispatcher_upvr (readonly)
			[4]: disableLogs_upvr (readonly)
			[5]: reenableLogs_upvr (readonly)
			[6]: describeComponentFrame_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 65 start (CF ANALYSIS FAILED)
		do
			return ""
		end
		-- KONSTANTERROR: [3] 4. Error Block 65 end (CF ANALYSIS FAILED)
	end;
	describeClassComponentFrame = describeClassComponentFrame_upvr;
	describeFunctionComponentFrame = describeFunctionComponentFrame_upvw;
	describeUnknownElementTypeFrameInDEV = describeUnknownElementTypeFrameInDEV_upvr;
}