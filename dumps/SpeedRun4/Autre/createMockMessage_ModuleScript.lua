-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:52
-- Luau version 6, Types version 3
-- Time taken: 0.000447 seconds

local var1_upvw = 0
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
return function(arg1) -- Line 7, Named "createMockMessage"
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: Cryo_upvr (readonly)
	]]
	var1_upvw += 1
	return Cryo_upvr.Dictionary.join({
		name = "Foo";
		id = tostring(var1_upvw);
		userId = '1';
		text = "Hello, World!";
		timestamp = var1_upvw;
	}, arg1)
end