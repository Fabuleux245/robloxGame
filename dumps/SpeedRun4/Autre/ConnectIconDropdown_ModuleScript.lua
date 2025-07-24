-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:35
-- Luau version 6, Types version 3
-- Time taken: 0.002767 seconds

local CorePackages = game:GetService("CorePackages")
local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatModal
local var8_upvw
if require(script.Parent.isConnectDropdownEnabled)() then
	var8_upvw = require(script.Parent.registerConnectIntegration)("connect_dropdown", require(script:FindFirstAncestor("Chrome").Service).AvailabilitySignal.Available)
	if not game:DefineFastFlag("AppChatConnectIconDropdownAlwaysAvailable", false) and require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad() then
		local any_getSquadEntrypointsEnabled_result1_2 = require(CorePackages.Workspace.Packages.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled()
		if any_getSquadEntrypointsEnabled_result1_2 then
			if InExperienceAppChatModal.default.currentSquadId == "" then
				any_getSquadEntrypointsEnabled_result1_2 = false
			else
				any_getSquadEntrypointsEnabled_result1_2 = true
			end
			if any_getSquadEntrypointsEnabled_result1_2 then
				var8_upvw.availability:unavailable()
			end
			InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(function(arg1) -- Line 34
				--[[ Upvalues[1]:
					[1]: var8_upvw (read and write)
				]]
				if arg1 == "" then
					var8_upvw.availability:available()
				else
					var8_upvw.availability:unavailable()
				end
			end)
		end
	end
end
return var8_upvw