-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:26
-- Luau version 6, Types version 3
-- Time taken: 0.001749 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Cryo_upvr = InGameMenuDependencies.Cryo
local Parent = script.Parent.Parent
return InGameMenuDependencies.Rodux.createReducer({
	dialogOpen = false;
	reportSentOpen = false;
	userId = nil;
	userName = nil;
}, {
	[require(Parent.Actions.OpenReportDialog).name] = function(arg1, arg2) -- Line 21
		return {
			dialogOpen = true;
			reportSentOpen = arg1.reportSentOpen;
			userId = arg2.userId;
			userName = arg2.userName;
		}
	end;
	[require(Parent.Actions.SetCurrentPage).name] = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			dialogOpen = false;
		})
	end;
	[require(Parent.Actions.CloseReportDialog).name] = function(arg1, arg2) -- Line 36
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			dialogOpen = false;
		})
	end;
	[require(Parent.Actions.OpenReportSentDialog).name] = function(arg1, arg2) -- Line 41
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			reportSentOpen = true;
		})
	end;
	[require(Parent.Actions.CloseReportSentDialog).name] = function(arg1, arg2) -- Line 46
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			reportSentOpen = false;
		})
	end;
})