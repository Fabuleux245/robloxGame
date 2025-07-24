-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:19
-- Luau version 6, Types version 3
-- Time taken: 0.005746 seconds

local Parent = script.Parent.Parent
local language = Parent.language
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Error_upvr = LuauPolyfill.Error
local printLocation = require(language.printLocation)
local printError_upvw
local setmetatable_result1_upvr = setmetatable({}, {
	__index = Error_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.__tostring(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: printError_upvw (read and write)
	]]
	return printError_upvw(arg1)
end
local undefinedIfEmpty_upvw
local getLocation_upvr = require(language.location).getLocation
local isObjectLike_upvr = require(Parent.jsutils.isObjectLike).isObjectLike
local Object_upvr = LuauPolyfill.Object
function setmetatable_result1_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 124
	--[[ Upvalues[7]:
		[1]: Error_upvr (readonly)
		[2]: undefinedIfEmpty_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: getLocation_upvr (readonly)
		[5]: isObjectLike_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: setmetatable_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local any_new_result1 = Error_upvr.new(arg1)
	any_new_result1.name = "GraphQLError"
	any_new_result1.originalError = arg6
	local var20
	if Array_upvr.isArray(arg2) then
		var20 = arg2
		-- KONSTANTWARNING: GOTO [27] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 72 start (CF ANALYSIS FAILED)
	if arg2 then
		var20 = {}
		var20[1] = arg2
	else
		var20 = nil
	end
	any_new_result1.nodes = undefinedIfEmpty_upvw(var20)
	var20 = any_new_result1.nodes
	if var20 then
		var20 = ipairs(any_new_result1.nodes)
		local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(any_new_result1.nodes)
		for i, v in ipairs_result1, ipairs_result2, ipairs_result3 do
			local loc = v.loc
			if loc ~= nil then
				table.insert({}, loc)
			end
		end
	end
	ipairs_result1 = undefinedIfEmpty_upvw
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	ipairs_result1 = ipairs_result1({})
	local var25 = ipairs_result1
	if arg3 then
		ipairs_result1 = arg3
	elseif var25 == nil then
		ipairs_result1 = nil
	else
		ipairs_result1 = var25[1].source
	end
	any_new_result1.source = ipairs_result1
	if arg4 then
		ipairs_result1 = arg4
	elseif not var25 then
		ipairs_result1 = nil
	else
		ipairs_result1 = Array_upvr.map
		ipairs_result1 = ipairs_result1(var25, function(arg1_2) -- Line 165
			return arg1_2.start
		end)
	end
	any_new_result1.positions = ipairs_result1
	if arg4 and arg3 then
		ipairs_result1 = Array_upvr.map
		ipairs_result1 = ipairs_result1(arg4, function(arg1_3) -- Line 170
			--[[ Upvalues[2]:
				[1]: getLocation_upvr (copied, readonly)
				[2]: arg3 (readonly)
			]]
			return getLocation_upvr(arg3, arg1_3)
		end)
	elseif var25 then
		ipairs_result1 = Array_upvr.map
		ipairs_result1 = ipairs_result1(var25, function(arg1_4) -- Line 174
			--[[ Upvalues[1]:
				[1]: getLocation_upvr (copied, readonly)
			]]
			return getLocation_upvr(arg1_4.source, arg1_4.start)
		end)
	else
		ipairs_result1 = nil
	end
	any_new_result1.locations = ipairs_result1
	ipairs_result1 = arg5 or nil
	any_new_result1.path = ipairs_result1
	if not arg6 then
		ipairs_result1 = nil
		-- KONSTANTWARNING: GOTO [115] #90
	end
	ipairs_result1 = arg6.extensions
	if arg7 == nil and isObjectLike_upvr(ipairs_result1) then
		i = ipairs_result1
		any_new_result1.extensions = Object_upvr.assign({}, i)
	else
		any_new_result1.extensions = arg7 or nil
	end
	if arg6 and arg6.stack then
		any_new_result1.stack = arg6.stack
	end
	i = setmetatable_result1_upvr
	do
		return setmetatable(any_new_result1, i)
	end
	-- KONSTANTERROR: [19] 16. Error Block 72 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_upvr.toString(arg1) -- Line 209
	--[[ Upvalues[1]:
		[1]: printError_upvw (read and write)
	]]
	return printError_upvw(arg1)
end
local HttpService_upvr = game:GetService("HttpService")
function setmetatable_result1_upvr.toJSON(arg1) -- Line 214
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local module = {"message"}
	if arg1.locations ~= nil then
		table.insert(module, "locations")
	end
	if arg1.path ~= nil then
		table.insert(module, "path")
	end
	if arg1.extensions ~= nil then
		table.insert(module, "extensions")
	end
	return '{'..Array_upvr.join(Array_upvr.map(module, function(arg1_5) -- Line 231
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpService_upvr:JSONEncode(arg1_5)..':'..HttpService_upvr:JSONEncode(arg1[arg1_5])
	end), ',')..'}'
end
function undefinedIfEmpty_upvw(arg1) -- Line 239, Named "undefinedIfEmpty"
	if arg1 == nil or #arg1 == 0 then
		return nil
	end
	return arg1
end
local printLocation_2_upvr = printLocation.printLocation
local printSourceLocation_upvr = printLocation.printSourceLocation
function printError_upvw(arg1) -- Line 243, Named "printError"
	--[[ Upvalues[2]:
		[1]: printLocation_2_upvr (readonly)
		[2]: printSourceLocation_upvr (readonly)
	]]
	local message = arg1.message
	if arg1.nodes ~= nil then
		for i_2 = 1, #arg1.nodes do
			local var39 = arg1.nodes[i_2]
			if var39.loc ~= nil then
				message = message.."\n\n"..printLocation_2_upvr(var39.loc)
			end
		end
		return message
	end
	if arg1.source ~= nil and arg1.locations ~= nil then
		i_2 = 1
		for i_3 = i_2, #arg1.locations do
			message = message.."\n\n"..printSourceLocation_upvr(arg1.source, arg1.locations[i_3])
		end
	end
	return message
end
return {
	printError = printError_upvw;
	GraphQLError = setmetatable_result1_upvr;
}