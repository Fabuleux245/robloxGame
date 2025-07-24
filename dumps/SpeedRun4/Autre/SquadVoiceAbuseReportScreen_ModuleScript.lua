-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:32
-- Luau version 6, Types version 3
-- Time taken: 0.001605 seconds

local dependencies = require(script:FindFirstAncestor("Squads").dependencies)
local React_upvr = dependencies.React
local Foundation_upvr = dependencies.Foundation
local SquadVoiceAbuseReport_upvr = require(script.Parent.SquadVoiceAbuseReport)
return function(arg1) -- Line 12, Named "SquadVoiceAbuseReportScreen"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Foundation_upvr (readonly)
		[3]: SquadVoiceAbuseReport_upvr (readonly)
	]]
	local navigation = arg1.navigation
	local var7
	local any_getParam_result1 = navigation.getParam("reportData", var7)
	if any_getParam_result1 == nil then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "SquadVoiceAbuseReportScreen requires reportData to be passed in")
	return React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(1, 0, 1, 0);
		padding = UDim.new(0, 12);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		sizeConstraint = {
			MaxSize = Vector2.new(800, 450);
		};
	}, {
		abuseReportFlow = React_upvr.createElement(SquadVoiceAbuseReport_upvr, {
			reportData = any_getParam_result1;
			onAbandon = navigation.pop;
			onComplete = navigation.pop;
		});
	})
end