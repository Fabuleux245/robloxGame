-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:15
-- Luau version 6, Types version 3
-- Time taken: 0.003456 seconds

local Parent = script:FindFirstAncestor("GameDetailRodux").Parent
local Dash_upvr = require(Parent.Dash)
local t = require(Parent.t)
local module_upvr = {
	new = function() -- Line 45, Named "new"
		return {}
	end;
	validateModel = t.interface({
		summary = t.interface({
			ageRecommendation = t.optional(t.interface({
				displayName = t.optional(t.string);
				displayNameWithHeaderShort = t.optional(t.string);
				minimumAge = t.number;
			}));
		});
		descriptorUsages = t.optional(t.array(t.interface({
			name = t.optional(t.string);
			followsComplianceApi = t.optional(t.boolean);
			descriptor = t.interface({
				name = t.string;
				displayName = t.string;
				complianceApiSupported = t.boolean;
				iconUrl = t.optional(t.string);
				localeCode = t.optional(t.string);
			});
			descriptorDimensionUsages = t.optional(t.array(t.interface({
				dimensionName = t.optional(t.string);
				dimensionValue = t.optional(t.string);
			})));
		})));
	});
}
function module_upvr.mock(arg1) -- Line 74
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Dash_upvr (readonly)
	]]
	local var11 = arg1
	if not var11 then
		var11 = {}
	end
	local any_new_result1 = module_upvr.new()
	any_new_result1.summary = {
		ageRecommendation = {
			displayName = "13+";
			minimumAge = 13;
		};
	}
	any_new_result1.descriptorUsages = {{
		descriptor = {
			complianceApiSupported = false;
			displayName = "Blood";
			iconUrl = "https://images.rbxcdn.com/blood-icon.svg";
			name = "blood";
		};
		descriptorDimensionUsages = {{
			dimensionName = "realism";
			dimensionValue = "unrealistic";
		}, {
			dimensionName = "blood-level";
			dimensionValue = "heavy";
		}};
		name = "blood";
	}, {
		descriptor = {
			complianceApiSupported = false;
			displayName = "Violence";
			iconUrl = "https://images.rbxcdn.com/violence-icon.svg";
			name = "violence";
		};
		descriptorDimensionUsages = {{
			dimensionName = "intensity";
			dimensionValue = "mild";
		}, {
			dimensionName = "frequency";
			dimensionValue = "infrequent";
		}};
		name = "violence";
	}}
	local any_joinDeep_result1 = Dash_upvr.joinDeep(any_new_result1, var11)
	if not module_upvr.validateModel(any_joinDeep_result1) then
		return error("AgeRecommendationDetails mockData is invalid")
	end
	return any_joinDeep_result1
end
local Result_upvr = require(Parent.Result)
function module_upvr.fromJsonData(arg1) -- Line 134
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Result_upvr (readonly)
		[3]: Dash_upvr (readonly)
	]]
	if not module_upvr.validateModel(arg1) then
		return Result_upvr.error("AgeRecommendationDetails.fromJsonData expects a valid moderation JSON response")
	end
	return Result_upvr.success(Dash_upvr.joinDeep(module_upvr.new(), arg1))
end
return module_upvr