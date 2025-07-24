-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:11
-- Luau version 6, Types version 3
-- Time taken: 0.003233 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Enums = require(script.Parent.Parent.Analytics.Enums)
local t = dependencies.t
local llama_upvr = dependencies.llama
local isEnum_upvr = require(script.Parent.Parent.Utils.isEnum)
local Contexts_upvr = Enums.Contexts
local formatKeyValidationError_upvr = require(script.Parent.formatKeyValidationError)
local EventTypes_upvr = Enums.EventTypes
local formatErrorForIncorrectKey_upvr = require(script.Parent.formatErrorForIncorrectKey)
local any_strictInterface_result1_upvr = t.strictInterface({
	context = t.any;
	eventType = t.any;
	additionalInfo = t.optional(t.table);
	formatRulesForAdditionalInfo = t.optional(t.table);
})
local SubPages_upvr = Enums.SubPages
local Pages_upvr = Enums.Pages
return function(arg1, arg2) -- Line 23
	--[[ Upvalues[9]:
		[1]: llama_upvr (readonly)
		[2]: isEnum_upvr (readonly)
		[3]: Contexts_upvr (readonly)
		[4]: formatKeyValidationError_upvr (readonly)
		[5]: EventTypes_upvr (readonly)
		[6]: formatErrorForIncorrectKey_upvr (readonly)
		[7]: any_strictInterface_result1_upvr (readonly)
		[8]: SubPages_upvr (readonly)
		[9]: Pages_upvr (readonly)
	]]
	llama_upvr.Dictionary.map(arg1, function(arg1_2, arg2_2) -- Line 24
		--[[ Upvalues[10]:
			[1]: isEnum_upvr (copied, readonly)
			[2]: Contexts_upvr (copied, readonly)
			[3]: formatKeyValidationError_upvr (copied, readonly)
			[4]: EventTypes_upvr (copied, readonly)
			[5]: formatErrorForIncorrectKey_upvr (copied, readonly)
			[6]: any_strictInterface_result1_upvr (copied, readonly)
			[7]: SubPages_upvr (copied, readonly)
			[8]: Pages_upvr (copied, readonly)
			[9]: llama_upvr (copied, readonly)
			[10]: arg2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var16_upvr
		if isEnum_upvr(arg2_2) then
			var16_upvr = arg2_2.rawValue()
		else
			var16_upvr = arg2_2
		end
		assert(Contexts_upvr.isEnumValue(arg1_2.context), formatKeyValidationError_upvr("context", "a Context enum", var16_upvr))
		assert(EventTypes_upvr.isEnumValue(arg1_2.eventType), formatKeyValidationError_upvr("eventType", "an EventType enum", var16_upvr))
		if type(arg1_2.additionalInfo) ~= "table" then
			if arg1_2.additionalInfo ~= nil then
			else
			end
		end
		assert(true, formatKeyValidationError_upvr("additionalInfo", "nil or a table", var16_upvr))
		if type(arg1_2.formatRulesForAdditionalInfo) ~= "table" then
			if arg1_2.formatRulesForAdditionalInfo ~= nil then
			else
			end
		end
		assert(true, formatKeyValidationError_upvr("formatRulesForAdditionalInfo", "nil or a table", var16_upvr))
		assert(formatErrorForIncorrectKey_upvr(any_strictInterface_result1_upvr)(arg1_2, var16_upvr))
		if arg1_2.additionalInfo then
			if arg1_2.additionalInfo.subpage ~= nil then
			end
			assert(SubPages_upvr.isEnumValue(arg1_2.additionalInfo.subpage), formatKeyValidationError_upvr("subpage additional info", "SubPages enum", var16_upvr))
			if arg1_2.additionalInfo.page ~= nil then
			end
			assert(Pages_upvr.isEnumValue(arg1_2.additionalInfo.page), formatKeyValidationError_upvr("page additional info", "Pages enum", var16_upvr))
			if not arg2 then
			end
			llama_upvr.Dictionary.map({}, function(arg1_3, arg2_3) -- Line 53
				--[[ Upvalues[2]:
					[1]: arg1_2 (readonly)
					[2]: var16_upvr (readonly)
				]]
				assert(arg1_3(arg1_2.additionalInfo[arg2_3]), arg2_3.." key is invalid. Issue with: "..var16_upvr)
			end)
		end
	end)
	return true
end