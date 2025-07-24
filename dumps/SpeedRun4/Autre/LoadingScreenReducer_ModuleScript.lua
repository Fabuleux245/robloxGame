-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:15
-- Luau version 6, Types version 3
-- Time taken: 0.001111 seconds

local ExperienceLoadingScript = script:FindFirstAncestor("ExperienceLoadingScript")
local Rodux = require(ExperienceLoadingScript.Parent.Rodux)
return Rodux.combineReducers({
	isSubjectToChinaPolicies = Rodux.createReducer(nil, {
		[require(ExperienceLoadingScript.Actions.SetIsSubjectToChinaPolicies).name] = function(arg1, arg2) -- Line 25
			return arg2.isSubjectToChinaPolicies
		end;
	});
	productInfo = Rodux.createReducer(nil, {
		[require(ExperienceLoadingScript.Actions.SetGameProductInfo).name] = function(arg1, arg2) -- Line 10
			return arg2.productInfo
		end;
	});
	gameIds = Rodux.createReducer(nil, {
		[require(ExperienceLoadingScript.Actions.SetUniverseId).name] = function(arg1, arg2) -- Line 16
			return {
				universeId = arg2.universeId;
				placeId = arg2.placeId;
			}
		end;
	});
})