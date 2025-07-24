-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:36
-- Luau version 6, Types version 3
-- Time taken: 0.000636 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local RobloxTranslator_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
local mockTranslator_upvr = require(script.Parent.mockTranslator)
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: CoreGui_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: mockTranslator_upvr (readonly)
	]]
	if CoreGui_upvr:FindFirstChild("CoreScriptLocalization") then
		return RobloxTranslator_upvr
	end
	return mockTranslator_upvr
end