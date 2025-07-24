-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:17
-- Luau version 6, Types version 3
-- Time taken: 0.000346 seconds

local ContextTypes_upvr = require(script.Parent.Parent.Parent.Analytics.Enums).ContextTypes
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: ContextTypes_upvr (readonly)
	]]
	if arg1 == nil then
		return nil
	end
	return ContextTypes_upvr[arg1.rawValue()].rawValue()
end