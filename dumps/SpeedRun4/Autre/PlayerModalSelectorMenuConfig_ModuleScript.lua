-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:42
-- Luau version 6, Types version 3
-- Time taken: 0.002014 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local InExperienceCapabilities_upvr = require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy_upvr = require(AbuseReportMenu.Flags.GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy)
local module = {
	componentType = "modalSelector";
	getIsVisible = function(arg1) -- Line 15, Named "getIsVisible"
		return true
	end;
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local UserLib_upvr = require(CorePackages.Workspace.Packages.UserLib)
local VerifiedBadges_upvr = require(CorePackages.Workspace.Packages.VerifiedBadges)
function module.getMenuItems(arg1) -- Line 18
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: UserLib_upvr (readonly)
		[3]: VerifiedBadges_upvr (readonly)
		[4]: GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy_upvr (readonly)
		[5]: InExperienceCapabilities_upvr (readonly)
	]]
	return Cryo_upvr.List.map(arg1.playerObjects, function(arg1_2) -- Line 19
		--[[ Upvalues[4]:
			[1]: UserLib_upvr (copied, readonly)
			[2]: VerifiedBadges_upvr (copied, readonly)
			[3]: GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy_upvr (copied, readonly)
			[4]: InExperienceCapabilities_upvr (copied, readonly)
		]]
		local var10
		if UserLib_upvr.Utils.isPlayerVerified(arg1_2) then
			var10 = VerifiedBadges_upvr.emoji.verified
		else
			var10 = ""
		end
		if GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy_upvr() then
			local module_2 = {}
			local var12 = arg1_2.DisplayName..var10
			module_2.label = var12
			if InExperienceCapabilities_upvr.canDisplayPeoplesUsernames then
				var12 = "[@"..arg1_2.Name..']'
			else
				var12 = nil
			end
			module_2.subLabel = var12
			module_2.identifier = arg1_2.Name
			return module_2
		end
		return {
			label = arg1_2.DisplayName..var10;
			subLabel = "[@"..arg1_2.Name..']';
			identifier = arg1_2.Name;
		}
	end)
end
function module.getSelectedValue(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy_upvr (readonly)
		[2]: InExperienceCapabilities_upvr (readonly)
	]]
	local allegedAbuser = arg1.allegedAbuser
	if allegedAbuser then
		local DisplayName = allegedAbuser.DisplayName
		local Name = allegedAbuser.Name
		local var17 = "[@"
		local var18 = DisplayName..var17..Name..']'
		if GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy_upvr() then
			if InExperienceCapabilities_upvr.canDisplayPeoplesUsernames then
				var17 = "[@"..Name..']'
			else
				var17 = ""
			end
			var18 = DisplayName..var17
		end
		return var18
	end
	return nil
end
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
function module.onUpdateSelectedOption(arg1, arg2, arg3, arg4) -- Line 55
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1.identifier then
		for _, v in arg2.playerObjects do
			if arg1.identifier == v.Name then
				arg4.analyticsDispatch({
					type = Constants_upvr.AnalyticsActions.IncrementPersonChanged;
				})
				arg3({
					type = Constants_upvr.PlayerMenuActions.UpdateAbuser;
					abuseId = v.UserId;
					abuser = v;
				})
			end
		end
	end
end
module.fieldLabel = "WhichPerson"
module.componentName = "PlayerSelector"
return module