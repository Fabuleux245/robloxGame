-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:58
-- Luau version 6, Types version 3
-- Time taken: 0.000733 seconds

local SetCentralOverlay_upvr = require(script:FindFirstAncestor("CentralOverlay").Actions.SetCentralOverlay)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: SetCentralOverlay_upvr (readonly)
	]]
	if not arg1 then
	end
	arg1 = {
		OverlayType = nil;
		Arguments = {};
		Configs = {};
	}
	local var4 = arg1
	local var5
	if arg2.type == var5 then
		local tbl = {}
		var5 = arg2.overlayType
		tbl.OverlayType = var5
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var5 = arg2.arguments
			return var5
		end
		if not arg2.arguments or not INLINED() then
			var5 = {}
		end
		tbl.Arguments = var5
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var5 = arg2.configs
			return var5
		end
		if not arg2.configs or not INLINED_2() then
			var5 = {}
		end
		tbl.Configs = var5
		var4 = tbl
	end
	return var4
end