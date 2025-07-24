-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:42
-- Luau version 6, Types version 3
-- Time taken: 0.000337 seconds

return function() -- Line 1, Named "isRunningInStudio"
	local any_IsStudio_result1 = game:GetService("RunService"):IsStudio()
	if any_IsStudio_result1 then
		any_IsStudio_result1 = not _G.__TESTEZ_RUNNING_TEST__
	end
	return any_IsStudio_result1
end