-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:40
-- Luau version 6, Types version 3
-- Time taken: 0.000615 seconds

local AspectRatioMode = require(script.Parent.Enum.AspectRatioMode)
local tbl_upvr = {
	[AspectRatioMode.Wide] = 0.5625;
	[AspectRatioMode.Square] = 1;
}
return function(arg1) -- Line 14, Named "getAspectRatio"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var3 = tbl_upvr[arg1]
	if not var3 then
		error("Unkown aspect ratio "..tostring(arg1))
	end
	return var3
end