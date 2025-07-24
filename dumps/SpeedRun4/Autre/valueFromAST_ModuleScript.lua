-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:15
-- Luau version 6, Types version 3
-- Time taken: 0.002395 seconds

local Parent = script.Parent.Parent
local Kind_upvr = require(Parent.language.kinds).Kind
local definition = require(Parent.type.definition)
local null_upvr = require(Parent.luaUtils.null)
local isNonNullType_upvr = definition.isNonNullType
local isListType_upvr = definition.isListType
local isMissingVariable_upvw
local isInputObjectType_upvr = definition.isInputObjectType
local keyMap_upvr = require(Parent.jsutils.keyMap).keyMap
local isLeafType_upvr = definition.isLeafType
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local function valueFromAST_upvr(arg1, arg2, arg3) -- Line 37, Named "valueFromAST"
	--[[ Upvalues[11]:
		[1]: Kind_upvr (readonly)
		[2]: null_upvr (readonly)
		[3]: isNonNullType_upvr (readonly)
		[4]: valueFromAST_upvr (readonly)
		[5]: isListType_upvr (readonly)
		[6]: isMissingVariable_upvw (read and write)
		[7]: isInputObjectType_upvr (readonly)
		[8]: keyMap_upvr (readonly)
		[9]: isLeafType_upvr (readonly)
		[10]: invariant_upvr (readonly)
		[11]: inspect_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
end
function isMissingVariable_upvw(arg1, arg2) -- Line 170, Named "isMissingVariable"
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var14 = false
	if arg1.kind == Kind_upvr.VARIABLE then
		var14 = true
		if arg2 ~= nil then
			if arg2[arg1.name.value] ~= nil then
				var14 = false
			else
				var14 = true
			end
		end
	end
	return var14
end
return {
	valueFromAST = valueFromAST_upvr;
}