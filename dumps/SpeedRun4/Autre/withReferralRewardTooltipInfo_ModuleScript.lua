-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:38
-- Luau version 6, Types version 3
-- Time taken: 0.002088 seconds

local CorePackages = game:GetService("CorePackages")
local HttpRequest_upvr = require(CorePackages.Packages.HttpRequest)
local tbl = {}
local function requestFunction(arg1, arg2, arg3) -- Line 7
	--[[ Upvalues[1]:
		[1]: HttpRequest_upvr (readonly)
	]]
	return HttpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
end
tbl.requestFunction = requestFunction
if require(CorePackages.Workspace.Packages.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	requestFunction = game:DefineFastInt("WithReferralRewardTooltipInfoHttpRetryCount", 4)
else
	requestFunction = nil
end
tbl.maxRetryCount = requestFunction
local Url_upvr = require(CorePackages.Workspace.Packages.Http).Url
local any_config_result1_upvr = HttpRequest_upvr.config(tbl)
function GetReferralRewardTooltipInfo() -- Line 19
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: any_config_result1_upvr (readonly)
	]]
	return any_config_result1_upvr(string.format("%sreferral-reward-metadata/v1/get-reward-metadata?%s", Url_upvr.APIS_URL, Url_upvr:makeQueryString({
		UniverseId = game.GameId;
	})), "GET")
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local React_upvr = require(CorePackages.Packages.React)
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
function withReferralRewardTooltipInfo(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
	]]
	return function(arg1_2) -- Line 28
		--[[ Upvalues[4]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: useLocalization_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local any_join_result1 = Cryo_upvr.Dictionary.join(arg1_2, {
			referralRewardTooltipText = "";
		})
		local any_useState_result1, any_useState_result2_upvr = React_upvr.useState("")
		React_upvr.useEffect(function() -- Line 33
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			GetReferralRewardTooltipInfo():andThen(function(arg1_3) -- Line 34
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				if arg1_3 and arg1_3.responseBody and arg1_3.responseBody.name then
					any_useState_result2_upvr(arg1_3.responseBody.name)
					task.delay(4, function() -- Line 37
						--[[ Upvalues[1]:
							[1]: any_useState_result2_upvr (copied, readonly)
						]]
						any_useState_result2_upvr("")
					end)
				end
			end):catch(function(arg1_4) -- Line 41
				warn(arg1_4)
			end)
		end, {})
		if any_useState_result1 ~= "" then
			any_join_result1 = Cryo_upvr.Dictionary.join(any_join_result1, {
				referralRewardTooltipText = useLocalization_upvr({
					referralRewardTooltipText = {
						referralRewardName = any_useState_result1;
						"CoreScripts.TopBar.RobloxMenuReferralRewardTooltip"
					};
				}).referralRewardTooltipText;
			})
		end
		return React_upvr.createElement(arg1, any_join_result1)
	end
end
return withReferralRewardTooltipInfo