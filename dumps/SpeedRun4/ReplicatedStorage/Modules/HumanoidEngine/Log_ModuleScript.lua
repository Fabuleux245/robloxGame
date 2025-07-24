-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:00
-- Luau version 6, Types version 3
-- Time taken: 0.005417 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
module_2_upvr.Prefix = ""
module_2_upvr.Shown = false
module_2_upvr.Type = "LogFormat"
module_2_upvr.Line = false
function module_2_upvr.SetPrefix(arg1, arg2) -- Line 9
	arg1.Prefix = arg2
end
function module_2_upvr.SetShown(arg1, arg2) -- Line 10
	arg1.Shown = arg2
end
function module_2_upvr.SetStackDump(arg1, arg2) -- Line 11
	arg1.StackDump = arg2
end
function module_2_upvr.SetTerminate(arg1, arg2) -- Line 12
	arg1.Terminate = arg2
end
function module_2_upvr.GetPrefix(arg1) -- Line 13
	return arg1.Prefix
end
function module_2_upvr.GetShown(arg1) -- Line 14
	return arg1.Shown
end
function module_2_upvr.GetStackDump(arg1, arg2) -- Line 15
	return arg1.StackDump
end
function module_2_upvr.GetTerminate(arg1, arg2) -- Line 16
	return arg1.Terminate
end
function module_2_upvr.SetLine(arg1, arg2) -- Line 17
	arg1.Line = arg2
end
function module_2_upvr.__call(arg1, ...) -- Line 18
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if not arg1.Shown then return end
	return module_2_upvr.logf(arg1, ...)
end
function module_2_upvr.new(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local setmetatable_result1 = setmetatable({}, module_2_upvr)
	setmetatable_result1:SetPrefix(arg1)
	setmetatable_result1:SetShown(arg2)
	local var3
	if arg3 ~= "warn" then
		if arg3 ~= "error" then
			var3 = false
		else
			var3 = true
		end
	end
	setmetatable_result1:SetStackDump(var3)
	if arg3 ~= "error" then
		var3 = false
		-- KONSTANTWARNING: GOTO [30] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 21. Error Block 22 start (CF ANALYSIS FAILED)
	var3 = true
	setmetatable_result1:SetTerminate(var3)
	if arg3 ~= "line" then
		var3 = false
	else
		var3 = true
	end
	setmetatable_result1:SetLine(var3)
	do
		return setmetatable_result1
	end
	-- KONSTANTERROR: [29] 21. Error Block 22 end (CF ANALYSIS FAILED)
end
function module_2_upvr.log(arg1, arg2) -- Line 32
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1 and type(arg1) == "table" and arg1.Type == "LogFormat" and arg1:GetShown() then
		for i in string.gmatch(arg2, "[^\n]+") do
			table.insert({}, arg1:GetPrefix()..i)
			local var12
		end
		if arg1:GetTerminate() then
			i = table.concat(var12, '\n')
			error('\n'..i)
			return
		end
	end
end
function module_2_upvr.logf(arg1, arg2, ...) -- Line 46
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local args_list = {...}
	local var27
	for i_2 in string.gmatch(arg2, "%%(%d*%.?%d*[a-zA-Z%%])") do
		if i_2 ~= '%' then
			local var28 = 0 + 1
			if i_2 == 's' then
				if args_list[var28] ~= nil and type(args_list[var28]) ~= "string" then
					args_list[var28] = tostring(args_list[var28])
				elseif args_list[var28] == nil then
					args_list[var28] = "nil"
				end
			end
		end
	end
	if arg1:GetStackDump() then
		var27 = var27.."\n%s"
		i_2 = "^([^\n\r]+\r?\n?\r?)"
		i_2 = "^([^\n\r]+\r?\n?\r?)"
		i_2 = string.gsub(string.gsub(debug.traceback(), i_2, ""), i_2, "")
		table.insert(args_list, i_2)
	elseif arg1.Line then
		var27 = var27.."\n%s"
		i_2 = "([^\n\r]+\r?\n?\r?)"
		i_2 = string.gmatch(string.gsub(debug.traceback(), i_2, "", 4), "[^\n\r]+")()
		table.insert(args_list, i_2)
	end
	return module_2_upvr.log(arg1, string.format(var27, unpack(args_list)))
end
module_2_upvr.Error = module_2_upvr.new("Error:\t", true, "error")
module_2_upvr.Warn = module_2_upvr.new("Warning:\t", true, "warn")
module_2_upvr.Debug = module_2_upvr.new("Debug:\t", true)
return module_2_upvr