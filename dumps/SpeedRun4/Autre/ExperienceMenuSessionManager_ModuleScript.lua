-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:12:50
-- Luau version 6, Types version 3
-- Time taken: 0.005842 seconds

local SessionType_upvr = require(script.Parent.SessionType)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	if arg1 then
		setmetatable_result1._sessionService = arg1
	else
		setmetatable_result1._sessionService = game:GetService("SessionService")
	end
	setmetatable_result1._currentMenuTab = nil
	return setmetatable_result1
end
function module_upvr._setMetadata(arg1, arg2, arg3, arg4) -- Line 50
	arg1._sessionService:SetMetadata(arg2, arg3, arg4)
end
function module_upvr.OpenExperienceMenu(arg1, arg2) -- Line 54
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.Level2a, SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.Tag.level3.ExperienceMenu)
	if arg2 then
		for i, v in pairs(arg2) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.ExperienceMenu, i, v)
		end
	end
end
function module_upvr.CloseExperienceMenu(arg1) -- Line 67
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	arg1:CloseOpenedMenuTab()
	arg1._sessionService:RemoveSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu)
end
function module_upvr.CloseOpenedMenuTab(arg1) -- Line 72
	if arg1._currentMenuTab then
		arg1._sessionService:RemoveSession(arg1._currentMenuTab)
		arg1._currentMenuTab = nil
	end
end
function module_upvr.OpenPeopleTab(arg1, arg2, arg3) -- Line 79
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.PeopleTab, SessionType_upvr.Tag.level3.PeopleTab)
	if arg3 then
		for i_2, v_2 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.PeopleTab, i_2, v_2)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.PeopleTab
end
function module_upvr.OpenSettingsTab(arg1, arg2, arg3) -- Line 91
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.SettingsTab, SessionType_upvr.Tag.level3.SettingsTab)
	if arg3 then
		for i_3, v_3 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.SettingsTab, i_3, v_3)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.SettingsTab
end
function module_upvr.OpenCapturesTab(arg1, arg2, arg3) -- Line 107
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.CapturesTab, SessionType_upvr.Tag.level3.CapturesTab)
	if arg3 then
		for i_4, v_4 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.CapturesTab, i_4, v_4)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.CapturesTab
end
function module_upvr.OpenReportTab(arg1, arg2, arg3) -- Line 123
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.ReportTab, SessionType_upvr.Tag.level3.ReportTab)
	if arg3 then
		for i_5, v_5 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.ReportTab, i_5, v_5)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.ReportTab
end
function module_upvr.OpenHelpTab(arg1, arg2, arg3) -- Line 135
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.HelpTab, SessionType_upvr.Tag.level3.HelpTab)
	if arg3 then
		for i_6, v_6 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.HelpTab, i_6, v_6)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.HelpTab
end
function module_upvr.OpenLeaveExperience(arg1, arg2, arg3) -- Line 147
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.LeaveExperience, SessionType_upvr.Tag.level3.LeaveExperience)
	if arg3 then
		for i_7, v_7 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.LeaveExperience, i_7, v_7)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.LeaveExperience
end
function module_upvr.OpenResetCharacter(arg1, arg2, arg3) -- Line 163
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	if arg2 then
	else
	end
	arg1._sessionService:SetSession(SessionType_upvr.StructuralIdentifier.ExperienceMenu, SessionType_upvr.StructuralIdentifier.ResetCharacter, SessionType_upvr.Tag.level3.ResetCharacter)
	if arg3 then
		for i_8, v_8 in pairs(arg3) do
			arg1._sessionService:SetMetadata(SessionType_upvr.StructuralIdentifier.ResetCharacter, i_8, v_8)
		end
	end
	arg1._currentMenuTab = SessionType_upvr.StructuralIdentifier.ResetCharacter
end
function module_upvr.MenuSwitchToPage(arg1, arg2) -- Line 179
	if arg2 == nil then
	else
		arg1:CloseOpenedMenuTab()
		local Name = arg2.Name
		if Name == "Players" then
			arg1:OpenPeopleTab()
			return
		end
		if Name == "Page" then
			arg1:OpenSettingsTab()
			return
		end
		if Name == "Captures" then
			arg1:OpenCapturesTab()
			return
		end
		if Name == "ReportAbuseMenuNewContainerPage" then
			arg1:OpenReportTab()
			return
		end
		if Name == "Help" then
			arg1:OpenHelpTab()
			return
		end
		if Name == "LeaveGamePage" then
			arg1:OpenLeaveExperience()
			return
		end
		if Name == "ResetCharacter" then
			arg1:OpenResetCharacter()
		end
	end
end
return module_upvr