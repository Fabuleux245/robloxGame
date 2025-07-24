-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:50
-- Luau version 6, Types version 3
-- Time taken: 0.002294 seconds

local Parent = script.Parent.Parent
local function _(arg1, arg2) -- Line 8, Named "checkName"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if type(arg1) == "table" then
		for _, v in pairs(arg1) do
			if v == arg2 then
				return true
			end
		end
	else
		local _
		if type(arg1) == "string" then
			if arg1 ~= arg2 then
			else
			end
			return true
		end
	end
	return false
end
local function _(arg1) -- Line 21, Named "getReadableName"
	if type(arg1) == "table" then
		return table.concat(arg1, " or ")
	end
	if type(arg1) == "string" then
		return arg1
	end
	return '*'
end
local function validateWithSchemaHelper_upvr(arg1, arg2, arg3) -- Line 30, Named "validateWithSchemaHelper"
	--[[ Upvalues[1]:
		[1]: validateWithSchemaHelper_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ClassName = arg2.ClassName
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 32. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 32. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 33. Error Block 50 start (CF ANALYSIS FAILED)
	do
		return {
			success = false;
		}
	end
	-- KONSTANTERROR: [47] 33. Error Block 50 end (CF ANALYSIS FAILED)
end
local getEngineFeatureRemoveProxyWrap_upvr = require(Parent.flags.getEngineFeatureRemoveProxyWrap)
local checkForProxyWrap_upvr = require(Parent.util.checkForProxyWrap)
return function(arg1, arg2, arg3) -- Line 70, Named "validateWithSchema"
	--[[ Upvalues[3]:
		[1]: validateWithSchemaHelper_upvr (readonly)
		[2]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[3]: checkForProxyWrap_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var18
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 33. Error Block 58 start (CF ANALYSIS FAILED)
	local module = {
		success = false;
	}
	local Name = arg1.Name
	if type(Name) == "table" then
		var18 = table.concat(Name, " or ")
	elseif type(Name) == "string" then
		var18 = Name
	else
		var18 = '*'
	end
	module.message = "Expected top-level instance to be a "..arg1.ClassName.." named "..var18
	do
		return module
	end
	-- KONSTANTERROR: [47] 33. Error Block 58 end (CF ANALYSIS FAILED)
end