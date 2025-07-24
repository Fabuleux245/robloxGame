-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:06
-- Luau version 6, Types version 3
-- Time taken: 0.000999 seconds

local IXPService_upvr = game:GetService("IXPService")
return {
	getIxpLayerData = function(arg1) -- Line 3
		--[[ Upvalues[1]:
			[1]: IXPService_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 4
			--[[ Upvalues[2]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return IXPService_upvr:GetUserLayerVariables(arg1)
		end)
		local var6
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = pcall_result2
			return var6
		end
		if not pcall_result1 or not INLINED() then
			var6 = nil
		end
		return var6
	end;
	logUserLayerExposure = function(arg1) -- Line 11
		--[[ Upvalues[1]:
			[1]: IXPService_upvr (readonly)
		]]
		pcall(function() -- Line 12
			--[[ Upvalues[2]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			IXPService_upvr:LogUserLayerExposure(arg1)
		end)
	end;
}