-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:58
-- Luau version 6, Types version 3
-- Time taken: 0.000669 seconds

local Roact_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).Roact
return function(arg1, arg2) -- Line 5, Named "new"
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var6 = arg2
	if not var6 then
		var6 = {}
	end
	local tbl = {}
	tbl.blockLayout = arg1
	for i, v in ipairs(var6) do
		tbl[i.."-block"] = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = v.size;
			LayoutOrder = i;
		}, {
			child = v.element;
		})
		local var13
	end
	return var13
end