-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:57
-- Luau version 6, Types version 3
-- Time taken: 0.001750 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local function hasOnlyAllowedAttribute_upvr(arg1, arg2) -- Line 18, Named "hasOnlyAllowedAttribute"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	for i, v in arg1 do
		if not arg2 or i ~= Constants_upvr.AlternateMeshIdAttributeName then
			if i ~= Constants_upvr.GUIDAttributeName then
				return false
			end
			if typeof(v) ~= "string" then
				return false
			end
			if Constants_upvr.GUIDAttributeMaxLength < string.len(v) then
				return false
			end
		end
	end
	return true
end
local getEngineFeatureRemoveProxyWrap_upvr = require(Parent.flags.getEngineFeatureRemoveProxyWrap)
local checkForProxyWrap_upvr = require(Parent.util.checkForProxyWrap)
local getFFlagUGCValidateEmoteAnimationExtendedTests_upvr = require(Parent.flags.getFFlagUGCValidateEmoteAnimationExtendedTests)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 40, Named "validateAttributes"
	--[[ Upvalues[6]:
		[1]: hasOnlyAllowedAttribute_upvr (readonly)
		[2]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: checkForProxyWrap_upvr (readonly)
		[5]: getFFlagUGCValidateEmoteAnimationExtendedTests_upvr (readonly)
		[6]: Analytics_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local allowEditableInstances = arg2.allowEditableInstances
	if not hasOnlyAllowedAttribute_upvr(arg1:GetAttributes(), allowEditableInstances) then
		table.insert({}, arg1:GetFullName())
	end
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 51. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 51. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 20. Error Block 36 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [66.9]
	if nil then
		if allowEditableInstances then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil then
				-- KONSTANTWARNING: GOTO [50] #40
			end
			-- KONSTANTWARNING: GOTO [66] #51
		end
		-- KONSTANTWARNING: GOTO [50] #40
	end
	-- KONSTANTERROR: [26] 20. Error Block 36 end (CF ANALYSIS FAILED)
end