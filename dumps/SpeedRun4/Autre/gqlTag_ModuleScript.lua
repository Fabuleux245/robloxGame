-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:42
-- Luau version 6, Types version 3
-- Time taken: 0.005749 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Map = LuauPolyfill.Map
local Set_upvr = LuauPolyfill.Set
local String_upvr = LuauPolyfill.String
local Object_upvr = LuauPolyfill.Object
local any_new_result1_3_upvr = Map.new(nil)
local any_new_result1_2_upvr = Map.new(nil)
local var9_upvw = true
local var10_upvw = false
local function normalize_upvr(arg1) -- Line 30, Named "normalize"
	--[[ Upvalues[1]:
		[1]: String_upvr (readonly)
	]]
	return String_upvr.trim(arg1:gsub(",+%s+", ' '))
end
local function _(arg1) -- Line 35, Named "cacheKeyFromLoc"
	--[[ Upvalues[1]:
		[1]: normalize_upvr (readonly)
	]]
	return normalize_upvr(arg1.source.body:sub(arg1.start, arg1._end))
end
local console_upvr = LuauPolyfill.console
local function processFragments_upvr(arg1) -- Line 39, Named "processFragments"
	--[[ Upvalues[6]:
		[1]: Set_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: any_new_result1_2_upvr (readonly)
		[4]: var9_upvw (read and write)
		[5]: console_upvr (readonly)
		[6]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = Set_upvr.new(nil)
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 85. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 85. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [112.7]
	if nil == "FragmentDefinition" then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [112.9]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [112.10]
			if not nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: GOTO [84] #64
				end
				-- KONSTANTWARNING: GOTO [84] #64
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
			-- KONSTANTWARNING: GOTO [112] #85
		end
	else
	end
	-- KONSTANTERROR: [13] 11. Error Block 22 end (CF ANALYSIS FAILED)
end
local Array_upvr = LuauPolyfill.Array
local function stripLoc_upvr(arg1) -- Line 83, Named "stripLoc"
	--[[ Upvalues[3]:
		[1]: Set_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local any_new_result1 = Set_upvr.new(nil)
	for i = 1, #any_new_result1 do
		local var20 = any_new_result1[i]
		if var20.loc then
			any_new_result1:delete(var20.loc)
		end
		for i_2 = 1, #Object_upvr.keys(var20) do
			local var21 = var20[tostring(Object_upvr.keys(var20)[i_2])]
			if var21 and typeof(var21) == "table" and not Array_upvr.isArray(var21) then
				any_new_result1:add(var21)
			end
		end
	end
	local loc = arg1.loc
	if loc then
		loc.startToken = nil
		loc.endToken = nil
	end
	return arg1
end
local parse_upvr = require(Parent.GraphQL).parse
local function parseDocument_upvr(arg1) -- Line 107, Named "parseDocument"
	--[[ Upvalues[6]:
		[1]: String_upvr (readonly)
		[2]: any_new_result1_3_upvr (readonly)
		[3]: parse_upvr (readonly)
		[4]: var10_upvw (read and write)
		[5]: stripLoc_upvr (readonly)
		[6]: processFragments_upvr (readonly)
	]]
	local any_trim_result1 = String_upvr.trim(arg1:gsub(",+%s+", ' '))
	if not any_new_result1_3_upvr:has(any_trim_result1) then
		local var23_result1 = parse_upvr(arg1, {
			experimentalFragmentVariables = var10_upvw;
		})
		if not var23_result1 or var23_result1.kind ~= "Document" then
			error("Not a valid GraphQL document.")
		end
		any_new_result1_3_upvr:set(any_trim_result1, stripLoc_upvr(processFragments_upvr(var23_result1)))
	end
	return any_new_result1_3_upvr:get(any_trim_result1)
end
local function gql(arg1) -- Line 130
	--[[ Upvalues[1]:
		[1]: parseDocument_upvr (readonly)
	]]
	if typeof(arg1) == "string" then
		return parseDocument_upvr(arg1)
	end
	if typeof(arg1) == "table" and arg1.kind == "Document" then
		return arg1
	end
	error("graphql-tag-lua does not currently support non-strings or Fragments. Please file an issue or PR if you need this feature added.")
end
function resetCaches() -- Line 159
	--[[ Upvalues[2]:
		[1]: any_new_result1_3_upvr (readonly)
		[2]: any_new_result1_2_upvr (readonly)
	]]
	any_new_result1_3_upvr:clear()
	any_new_result1_2_upvr:clear()
end
function disableFragmentWarnings() -- Line 164
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	var9_upvw = false
end
function enableExperimentalFragmentVariables() -- Line 168
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw = true
end
function disableExperimentalFragmentVariables() -- Line 172
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw = false
end
local tbl = {
	gql = gql;
	resetCaches = resetCaches;
	disableFragmentWarnings = disableFragmentWarnings;
	enableExperimentalFragmentVariables = enableExperimentalFragmentVariables;
	disableExperimentalFragmentVariables = disableExperimentalFragmentVariables;
}
return {
	default = gql;
	gql = gql;
	resetCaches = tbl.resetCaches;
	disableFragmentWarnings = tbl.disableFragmentWarnings;
	enableExperimentalFragmentVariables = tbl.enableExperimentalFragmentVariables;
	disableExperimentalFragmentVariables = tbl.disableExperimentalFragmentVariables;
}