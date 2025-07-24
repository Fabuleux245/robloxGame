-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:23
-- Luau version 6, Types version 3
-- Time taken: 0.000626 seconds

local module = {}
local supportsTestSelectors_upvr = require(script.Parent.ReactFiberHostConfig).supportsTestSelectors
local tbl_upvr = {}
function module.onCommitRoot() -- Line 512
	--[[ Upvalues[2]:
		[1]: supportsTestSelectors_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if supportsTestSelectors_upvr then
		for _, v in tbl_upvr do
			v()
		end
	end
end
return module