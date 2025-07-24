-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:13
-- Luau version 6, Types version 3
-- Time taken: 0.001922 seconds

local Parent = script.Parent.Parent
local validateWithSchema_upvr = require(Parent.util.validateWithSchema)
local Analytics_upvr = require(Parent.Analytics)
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2, arg3) -- Line 9, Named "validateInstanceTree"
	--[[ Upvalues[3]:
		[1]: validateWithSchema_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local validateWithSchema_upvr_result1 = validateWithSchema_upvr(arg1, arg2, arg3)
	if validateWithSchema_upvr_result1.success == false then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateInstanceTree, nil, arg3)
		return false, {"Detected the following error(s): "..validateWithSchema_upvr_result1.message}
	end
	local module = {}
	if Constants_upvr.BANNED_NAMES[arg2.Name] then
		table.insert(module, string.format("%s has an invalid name", arg2:GetFullName()))
	end
	for i, v in pairs(arg2:GetDescendants()) do
		for i_2, v_2 in pairs(Constants_upvr.BANNED_CLASS_NAMES) do
			if v:IsA(v_2) then
				table.insert(module, string.format("%s is of type %s which is not allowed", v:GetFullName(), v_2))
			end
		end
		if Constants_upvr.BANNED_NAMES[v.Name] then
			i_2 = "%s has an invalid name"
			v_2 = v:GetFullName()
			table.insert(module, string.format(i_2, v_2))
		end
	end
	if 0 < #module then
		i = Analytics_upvr
		i = arg3
		Analytics_upvr.reportFailure(i.ErrorType.validateInstanceTree_InvalidDescendants, nil, i)
		return false, module
	end
	return true
end