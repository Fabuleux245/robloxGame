-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:17
-- Luau version 6, Types version 3
-- Time taken: 0.000729 seconds

local Fusion = require(script.Parent.Parent.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion.New
local Cleanup_upvr = Fusion.Cleanup
local Children_upvr = Fusion.Children
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: Cleanup_upvr (readonly)
		[3]: Children_upvr (readonly)
	]]
	return New_upvr("ScreenGui")({
		Name = arg1.Name;
		Enabled = arg1.Enabled;
		ResetOnSpawn = false;
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Global;
		DisplayOrder = arg1.DisplayOrder;
		[Cleanup_upvr] = arg1.Cleanup;
		[Children_upvr] = arg1.Children;
	})
end