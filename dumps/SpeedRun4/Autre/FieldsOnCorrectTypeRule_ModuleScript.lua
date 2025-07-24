-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:19
-- Luau version 6, Types version 3
-- Time taken: 0.004962 seconds

local Parent = script.Parent.Parent.Parent
local jsutils = Parent.jsutils
local definition = require(Parent.type.definition)
local isInterfaceType_upvr = definition.isInterfaceType
local module = {}
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
local getSuggestedTypeNames_upvw
local getSuggestedFieldNames_upvw
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.FieldsOnCorrectTypeRule(arg1) -- Line 36
	--[[ Upvalues[4]:
		[1]: didYouMean_upvr (readonly)
		[2]: getSuggestedTypeNames_upvw (read and write)
		[3]: getSuggestedFieldNames_upvw (read and write)
		[4]: GraphQLError_upvr (readonly)
	]]
	return {
		Field = function(arg1_2, arg2) -- Line 38, Named "Field"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: didYouMean_upvr (copied, readonly)
				[3]: getSuggestedTypeNames_upvw (copied, read and write)
				[4]: getSuggestedFieldNames_upvw (copied, read and write)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local any_getParentType_result1 = arg1:getParentType()
			if any_getParentType_result1 and not arg1:getFieldDef() then
				local value = arg2.name.value
				local var7_result1 = didYouMean_upvr("to use an inline fragment on", getSuggestedTypeNames_upvw(arg1:getSchema(), any_getParentType_result1, value))
				if var7_result1 == "" then
					var7_result1 = didYouMean_upvr(getSuggestedFieldNames_upvw(any_getParentType_result1, value))
				end
				arg1:reportError(GraphQLError_upvr.new("Cannot query field \"%s\" on type \"%s\".":format(value, any_getParentType_result1.name)..var7_result1, arg2))
			end
		end;
	}
end
local isAbstractType_upvr = definition.isAbstractType
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local naturalCompare_upvr = require(jsutils.naturalCompare).naturalCompare
function getSuggestedTypeNames_upvw(arg1, arg2, arg3) -- Line 77, Named "getSuggestedTypeNames"
	--[[ Upvalues[4]:
		[1]: isAbstractType_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: isInterfaceType_upvr (readonly)
		[4]: naturalCompare_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not isAbstractType_upvr(arg2) then
		return {}
	end
	local tbl = {}
	local tbl_2_upvr = {}
	for _, v in ipairs(arg1:getPossibleTypes(arg2)) do
		if v:getFields():get(arg3) then
			tbl[v] = true
			tbl_2_upvr[v.name] = 1
			for _, v_2 in ipairs(v:getInterfaces()) do
				if v_2:getFields():get(arg3) then
					tbl[v_2] = true
					tbl_2_upvr[v_2.name] = (tbl_2_upvr[v_2.name] or 0) + 1
				end
			end
		end
	end
	for i_3, _ in pairs(tbl) do
		table.insert({}, i_3)
		local var54
	end
	Array_upvr.sort(var54, function(arg1_3, arg2_2) -- Line 114
		--[[ Upvalues[4]:
			[1]: tbl_2_upvr (readonly)
			[2]: isInterfaceType_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: naturalCompare_upvr (copied, readonly)
		]]
		local var56 = tbl_2_upvr[arg2_2.name] - tbl_2_upvr[arg1_3.name]
		if var56 ~= 0 then
			return var56
		end
		if isInterfaceType_upvr(arg1_3) and arg1:isSubType(arg1_3, arg2_2) then
			return -1
		end
		if isInterfaceType_upvr(arg2_2) and arg1:isSubType(arg2_2, arg1_3) then
			return 1
		end
		return naturalCompare_upvr(arg1_3.name, arg2_2.name)
	end)
	return Array_upvr.map(var54, function(arg1_4) -- Line 131
		return arg1_4.name
	end)
end
local isObjectType_upvr = definition.isObjectType
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
function getSuggestedFieldNames_upvw(arg1, arg2) -- Line 140, Named "getSuggestedFieldNames"
	--[[ Upvalues[3]:
		[1]: isObjectType_upvr (readonly)
		[2]: isInterfaceType_upvr (readonly)
		[3]: suggestionList_upvr (readonly)
	]]
	if isObjectType_upvr(arg1) or isInterfaceType_upvr(arg1) then
		return suggestionList_upvr(arg2, arg1:getFields():keys())
	end
	return {}
end
return module