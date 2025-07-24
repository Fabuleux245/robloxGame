-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:16
-- Luau version 6, Types version 3
-- Time taken: 0.000478 seconds

local React_upvr = require(script:FindFirstAncestor("RoactAppExperiment").Parent.React)
local ExperimentContext_upvr = require(script.Parent.ExperimentContext)
local IXPService_upvr = game:GetService("IXPService")
return function() -- Line 8, Named "useIXPService"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ExperimentContext_upvr (readonly)
		[3]: IXPService_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(ExperimentContext_upvr)
	if any_useContext_result1 then
		return any_useContext_result1
	end
	return IXPService_upvr
end