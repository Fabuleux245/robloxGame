-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:33
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local JestConfigs = require(game:GetService("CorePackages").Workspace.Packages.JestConfigs)
return {
	displayName = "AbuseReportMenu";
	testMatch = {"**/*.test"};
	setupFilesAfterEnv = {JestConfigs.setupFiles.LogHandler, JestConfigs.setupFiles.UIBloxInitializer, JestConfigs.setupFiles.createPromiseRejectionHandler()};
}