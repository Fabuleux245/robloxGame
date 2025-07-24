-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:57
-- Luau version 6, Types version 3
-- Time taken: 0.001154 seconds

local Parent = script.Parent.Parent
local logError_upvr = require(Parent.Logging.logError)
local defaultProps_upvr = require(Parent.Instances.defaultProps)
local applyInstanceProps_upvr = require(Parent.Instances.applyInstanceProps)
return function(arg1) -- Line 14, Named "New"
	--[[ Upvalues[3]:
		[1]: logError_upvr (readonly)
		[2]: defaultProps_upvr (readonly)
		[3]: applyInstanceProps_upvr (readonly)
	]]
	return function(arg1_2) -- Line 15
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: logError_upvr (copied, readonly)
			[3]: defaultProps_upvr (copied, readonly)
			[4]: applyInstanceProps_upvr (copied, readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(Instance.new, arg1)
		if not pcall_result1 then
			logError_upvr("cannotCreateClass", nil, arg1)
		end
		local var12 = defaultProps_upvr[arg1]
		if var12 ~= nil then
			for i, v in pairs(var12) do
				pcall_result2[i] = v
			end
		end
		applyInstanceProps_upvr(arg1_2, pcall_result2)
		return pcall_result2
	end
end