-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:40
-- Luau version 6, Types version 3
-- Time taken: 0.000486 seconds

local CorePackages = game:GetService("CorePackages")
return require(CorePackages.Packages.Rodux).combineReducers({
	common = require(script.common);
	displayOptions = require(script.displayOptions);
	feedbackFlowState = require(script.feedbackFlowState);
	FetchingStatus = require(CorePackages.Workspace.Packages.Http).Reducers.FetchingStatus;
})