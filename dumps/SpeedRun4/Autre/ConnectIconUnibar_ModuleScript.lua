-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:36
-- Luau version 6, Types version 3
-- Time taken: 0.003018 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local InExperienceAppChatModal_2 = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatModal
local var10_upvw
local var11
if require(script.Parent.isConnectUnibarEnabled)() then
	local any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad()
	if any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 then
		any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 = require(CorePackages.Workspace.Packages.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled()
		if any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 then
			any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 = require(script.Parent.isConnectDropdownEnabled)()
		end
	end
	if any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 then
		var11 = require(script:FindFirstAncestor("Chrome").Service).AvailabilitySignal.Unavailable
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var11 = require(script:FindFirstAncestor("Chrome").Service).AvailabilitySignal.Pinned
	end
	var10_upvw = require(script.Parent.registerConnectIntegration)("connect_unibar", var11)
	if any_GetFFlagAppChatAddConnectUnibarForActiveSquad_result1 then
		var11 = InExperienceAppChatModal_2.default
		if var11.currentSquadId == "" then
		else
		end
		if true then
			var10_upvw.availability:pinned()
		end
		var11 = InExperienceAppChatModal_2.default.currentSquadIdSignal
		var11.Event:Connect(function(arg1) -- Line 46
			--[[ Upvalues[1]:
				[1]: var10_upvw (read and write)
			]]
			if arg1 == "" then
				var10_upvw.availability:unavailable()
			else
				var10_upvw.availability:pinned()
			end
		end)
	end
end
return var10_upvw