-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:45
-- Luau version 6, Types version 3
-- Time taken: 0.001104 seconds

local module_2 = {}
local IXPServiceWrapper_upvr = require(game:GetService("CorePackages").Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
function module_2.new() -- Line 14
	--[[ Upvalues[1]:
		[1]: IXPServiceWrapper_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, {
		__tostring = function() -- Line 18, Named "__tostring"
			return "Service(ABTest)"
		end;
	})
	function module.getLayerData(arg1) -- Line 23
		--[[ Upvalues[1]:
			[1]: IXPServiceWrapper_upvr (copied, readonly)
		]]
		return IXPServiceWrapper_upvr:GetLayerData(arg1)
	end
	function module.logUserLayerExposure(arg1) -- Line 27
		--[[ Upvalues[1]:
			[1]: IXPServiceWrapper_upvr (copied, readonly)
		]]
		IXPServiceWrapper_upvr:LogUserLayerExposure(arg1)
	end
	return module
end
return module_2