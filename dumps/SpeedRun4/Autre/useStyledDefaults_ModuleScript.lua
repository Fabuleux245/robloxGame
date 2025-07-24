-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:50
-- Luau version 6, Types version 3
-- Time taken: 0.001870 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local styleMappings_upvr = require(script.Parent.styleMappings)
local function applyRule_upvr(arg1, arg2, arg3) -- Line 15, Named "applyRule"
	--[[ Upvalues[1]:
		[1]: styleMappings_upvr (readonly)
	]]
	local var5 = arg1.pseudo or "GuiObject"
	for i, v in arg1.properties do
		local var6 = styleMappings_upvr[var5][i]
		if var6.filter == nil or var6.filter == arg3 then
			if type(var6.property) == "table" then
				if arg2[var6.property.table] == nil then
					arg2[var6.property.table] = {}
				end
				arg2[var6.property.table][var6.property.key] = v
			elseif type(var6.property) == "string" then
				arg2[var6.property] = v
			else
				error(`Invalid mapping type {var5} {i}`)
			end
		end
	end
	return arg2
end
local function applyRules_upvr(arg1, arg2, arg3, arg4) -- Line 41, Named "applyRules"
	--[[ Upvalues[1]:
		[1]: applyRule_upvr (readonly)
	]]
	if arg1 then
		for i_2 in string.gmatch(arg1, "%S+") do
			if arg2[i_2] then
				applyRule_upvr(arg2[i_2], arg3, arg4)
			end
		end
	end
end
local function applyDefaults_upvr(arg1, arg2) -- Line 51, Named "applyDefaults"
	for i_3, v_2 in arg2 do
		if typeof(v_2) == "table" and typeof(arg1[i_3]) == "table" then
			for i_4, _ in pairs(v_2) do
				arg1[i_3][i_4] = v_2[i_4]
			end
		else
			arg1[i_3] = v_2
		end
	end
end
local useRules_upvr = require(Foundation.Providers.Style.useRules)
local React_upvr = require(Foundation.Parent.React)
local getFormattedTags_upvr = require(Foundation.Utility.getFormattedTags)
return function(arg1, arg2, arg3, arg4) -- Line 63, Named "useStyledDefaults"
	--[[ Upvalues[5]:
		[1]: useRules_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: applyRules_upvr (readonly)
		[4]: getFormattedTags_upvr (readonly)
		[5]: applyDefaults_upvr (readonly)
	]]
	local var18_result1_upvr = useRules_upvr()
	local module = {}
	module[1] = arg2
	module[2] = arg3
	module[3] = arg4
	module[4] = arg1
	module[5] = var18_result1_upvr
	return React_upvr.useMemo(function() -- Line 66
		--[[ Upvalues[8]:
			[1]: applyRules_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: var18_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: getFormattedTags_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: applyDefaults_upvr (copied, readonly)
			[8]: arg4 (readonly)
		]]
		local module_2 = {}
		applyRules_upvr(arg3, var18_result1_upvr, module_2, arg1)
		applyRules_upvr(getFormattedTags_upvr(arg2), var18_result1_upvr, module_2, arg1)
		applyDefaults_upvr(module_2, arg4)
		return module_2
	end, module)
end