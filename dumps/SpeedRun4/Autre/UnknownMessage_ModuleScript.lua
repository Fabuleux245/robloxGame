-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:40
-- Luau version 6, Types version 3
-- Time taken: 0.000564 seconds

local module = require(script.Parent:WaitForChild("Util"))
function CreateUnknownMessageLabel(arg1) -- Line 13
	print("No message creator for message: "..arg1.Message)
end
return {
	[module.KEY_MESSAGE_TYPE] = "UnknownMessage";
	[module.KEY_CREATOR_FUNCTION] = CreateUnknownMessageLabel;
}