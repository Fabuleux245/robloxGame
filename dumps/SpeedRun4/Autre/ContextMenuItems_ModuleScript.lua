-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:34
-- Luau version 6, Types version 3
-- Time taken: 0.013204 seconds

local Players_upvr = game:GetService("Players")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local TextChatService_upvr = game:GetService("TextChatService")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Modules = RobloxGui_upvr:WaitForChild("Modules")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local AvatarContextMenu = Modules:WaitForChild("AvatarContextMenu")
local module_upvr = require(AvatarContextMenu:WaitForChild("ContextMenuUtil"))
local ThemeHandler_upvr = require(AvatarContextMenu.ThemeHandler)
local t = require(CorePackages.Packages.t)
local var13_upvw
while not var13_upvw do
	Players_upvr.PlayerAdded:wait()
	var13_upvw = Players_upvr.LocalPlayer
end
local tbl_upvr = {
	[Enum.AvatarContextMenuOption.Chat] = true;
	[Enum.AvatarContextMenuOption.Friend] = true;
	[Enum.AvatarContextMenuOption.Emote] = true;
	[Enum.AvatarContextMenuOption.InspectMenu] = true;
}
local tbl_2_upvr = {}
local var16_upvw = 0
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
function module_upvr_2.UpdateInspectMenuEnabled(arg1) -- Line 74
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local any_GetInspectMenuEnabled_result1 = GuiService_upvr:GetInspectMenuEnabled()
	if any_GetInspectMenuEnabled_result1 ~= tbl_upvr[Enum.AvatarContextMenuOption.InspectMenu] then
		tbl_upvr[Enum.AvatarContextMenuOption.InspectMenu] = any_GetInspectMenuEnabled_result1
	end
end
function module_upvr_2.ClearMenuItems(arg1) -- Line 82
	local children = arg1.MenuItemFrame:GetChildren()
	for i = 1, #children do
		if children[i]:IsA("GuiObject") then
			children[i]:Destroy()
		end
	end
end
function module_upvr_2.AddCustomAvatarMenuItem(arg1, arg2, arg3) -- Line 91
	--[[ Upvalues[2]:
		[1]: var16_upvw (read and write)
		[2]: tbl_2_upvr (readonly)
	]]
	var16_upvw += 1
	local tbl = {}
	tbl.event = arg3
	tbl.layoutOrder = var16_upvw
	tbl_2_upvr[arg2] = tbl
end
function module_upvr_2.RemoveCustomAvatarMenuItem(arg1, arg2) -- Line 99
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr[arg2] = nil
end
function module_upvr_2.IsContextAvatarEnumItem(arg1, arg2) -- Line 103
	local Enum_AvatarContextMenuOption_GetEnumItems_result1 = Enum.AvatarContextMenuOption:GetEnumItems()
	for i_2 = 1, #Enum_AvatarContextMenuOption_GetEnumItems_result1 do
		if arg2 == Enum_AvatarContextMenuOption_GetEnumItems_result1[i_2] then
			return true
		end
	end
	return false
end
function module_upvr_2.EnableDefaultMenuItem(arg1, arg2) -- Line 113
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg2] = true
end
function module_upvr_2.RemoveDefaultMenuItem(arg1, arg2) -- Line 117
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg2] = false
end
local StarterGui_upvr = game:GetService("StarterGui")
function module_upvr_2.RegisterCoreMethods(arg1) -- Line 121
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	StarterGui_upvr:RegisterSetCore("AddAvatarContextMenuOption", function(arg1_2) -- Line 122, Named "addMenuItemFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if type(arg1_2) == "table" then
			local var25
			if arg1_2[1] and type(arg1_2[1]) == "string" then
				var25 = arg1_2[1]
			else
				error("AddAvatarContextMenuOption first argument must be a table or Enum.AvatarContextMenuOption")
			end
			if arg1_2[2] and typeof(arg1_2[2]) == "Instance" and arg1_2[2].ClassName == "BindableEvent" then
				arg1:AddCustomAvatarMenuItem(var25, arg1_2[2])
			else
				error("AddAvatarContextMenuOption second table entry must be a BindableEvent")
			end
		end
		if typeof(arg1_2) == "EnumItem" then
			if arg1:IsContextAvatarEnumItem(arg1_2) then
				arg1:EnableDefaultMenuItem(arg1_2)
			else
				error("AddAvatarContextMenuOption given EnumItem is not valid")
			end
		end
		error("AddAvatarContextMenuOption first argument must be a table or Enum.AvatarContextMenuOption")
	end)
	StarterGui_upvr:RegisterSetCore("RemoveAvatarContextMenuOption", function(arg1_3) -- Line 147, Named "removeMenuItemFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if type(arg1_3) == "string" then
			arg1:RemoveCustomAvatarMenuItem(arg1_3)
		else
			if typeof(arg1_3) == "EnumItem" then
				if arg1:IsContextAvatarEnumItem(arg1_3) then
					arg1:RemoveDefaultMenuItem(arg1_3)
				else
					error("RemoveAvatarContextMenuOption given EnumItem is not valid")
				end
			end
			error("RemoveAvatarContextMenuOption first argument must be a string or Enum.AvatarContextMenuOption")
		end
	end)
end
local GameTranslator_upvr = require(RobloxGui_upvr.Modules.GameTranslator)
function module_upvr_2.CreateCustomMenuItems(arg1) -- Line 163
	--[[ Upvalues[5]:
		[1]: tbl_2_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: GameTranslator_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: ThemeHandler_upvr (readonly)
	]]
	for i_3, v_upvr in pairs(tbl_2_upvr) do
		RbxAnalyticsService_upvr:TrackEvent("Game", "AvatarContextMenuCustomButton", "name: "..tostring(i_3))
		i_3 = GameTranslator_upvr:TranslateGameText(arg1.MenuItemFrame, i_3)
		local any_MakeStyledButton_result1_5 = module_upvr:MakeStyledButton("CustomButton", i_3, UDim2.new(0.96, 0, 0, 52), function() -- Line 166, Named "customButtonFunc"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_upvr (readonly)
			]]
			if arg1.CloseMenuFunc then
				arg1:CloseMenuFunc()
			end
			v_upvr.event:Fire(arg1.SelectedPlayer)
		end, ThemeHandler_upvr:GetTheme())
		any_MakeStyledButton_result1_5.Name = "CustomButton"
		any_MakeStyledButton_result1_5.LayoutOrder = v_upvr.layoutOrder
		any_MakeStyledButton_result1_5.Parent = arg1.MenuItemFrame
	end
end
local var33_upvw = "Add Friend"
local var34_upvw = "Friends"
local var35_upvw = "Friend Request Pending"
local var36_upvw = "Accept Friend Request"
local var37_upvw = "Player Blocked"
function module_upvr_2.CreateFriendButton(arg1, arg2, arg3) -- Line 197
	--[[ Upvalues[11]:
		[1]: var33_upvw (read and write)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: var34_upvw (read and write)
		[4]: var35_upvw (read and write)
		[5]: var36_upvw (read and write)
		[6]: var37_upvw (read and write)
		[7]: RbxAnalyticsService_upvr (readonly)
		[8]: var13_upvw (read and write)
		[9]: module_upvr (readonly)
		[10]: ThemeHandler_upvr (readonly)
		[11]: var16_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	var33_upvw = RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.AddFriend")
	var34_upvw = RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.Friends")
	var35_upvw = RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.FriendRequestPending")
	var36_upvw = RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.AcceptFriendRequest")
	var37_upvw = RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.PlayerBlocked")
	local FriendStatus_upvw = arg1.MenuItemFrame:FindFirstChild("FriendStatus")
	if FriendStatus_upvw then
		FriendStatus_upvw:Destroy()
		FriendStatus_upvw = nil
	end
	local var40_upvw
	local any_MakeStyledButton_result1_3, any_MakeStyledButton_result2_2 = module_upvr:MakeStyledButton("FriendStatus", var33_upvw, UDim2.new(0.96, 0, 0, 52), function() -- Line 214
		--[[ Upvalues[6]:
			[1]: var40_upvw (read and write)
			[2]: FriendStatus_upvw (read and write)
			[3]: var35_upvw (copied, read and write)
			[4]: RbxAnalyticsService_upvr (copied, readonly)
			[5]: var13_upvw (copied, read and write)
			[6]: arg1 (readonly)
		]]
		if var40_upvw and FriendStatus_upvw.Selectable then
			FriendStatus_upvw.Selectable = false
			var40_upvw.TextTransparency = 0.75
			var40_upvw.Text = var35_upvw
			RbxAnalyticsService_upvr:ReportCounter("AvatarContextMenu-RequestFriendship")
			RbxAnalyticsService_upvr:TrackEvent("Game", "RequestFriendship", "AvatarContextMenu")
			var13_upvw:RequestFriendship(arg1.SelectedPlayer)
		end
	end, ThemeHandler_upvr:GetTheme())
	FriendStatus_upvw = any_MakeStyledButton_result1_3
	local var43 = FriendStatus_upvw
	var40_upvw = any_MakeStyledButton_result2_2
	local var44 = var40_upvw
	if arg3 then
		var43.Selectable = false
		var44.TextTransparency = 0.75
		var44.Text = var37_upvw
		-- KONSTANTWARNING: GOTO [122] #94
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 67. Error Block 23 start (CF ANALYSIS FAILED)
	if arg2 == Enum.FriendStatus.Friend then
		var43.Selectable = false
		var44.TextTransparency = 0.75
		var44.Text = var34_upvw
	elseif arg2 == Enum.FriendStatus.FriendRequestSent then
		var43.Selectable = false
		var44.TextTransparency = 0.75
		var44.Text = var35_upvw
	elseif arg2 == Enum.FriendStatus.FriendRequestReceived then
		var44.Text = var36_upvw
	else
		var43.Selectable = true
		var44.TextTransparency = 0
	end
	-- KONSTANTERROR: [80] 67. Error Block 23 end (CF ANALYSIS FAILED)
end
function module_upvr_2.UpdateFriendButton(arg1, arg2, arg3) -- Line 256
	if arg1.MenuItemFrame:FindFirstChild("FriendStatus") then
		arg1:CreateFriendButton(arg2, arg3)
	end
end
function module_upvr_2.CreateInspectAndBuyButton(arg1) -- Line 263
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: ThemeHandler_upvr (readonly)
		[6]: var16_upvw (read and write)
	]]
	local any_MakeStyledButton_result1_2 = module_upvr:MakeStyledButton("View", RobloxTranslator_upvr:FormatByKey("InGame.InspectMenu.Action.View"), UDim2.new(0.96, 0, 0, 52), function() -- Line 264, Named "browseItems"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		if arg1.CloseMenuFunc then
			arg1:CloseMenuFunc()
		end
		if not tbl_upvr[Enum.AvatarContextMenuOption.InspectMenu] then
			warn("The Inspect Menu is not currently available.")
		else
			GuiService_upvr:InspectPlayerFromUserIdWithCtx(arg1.SelectedPlayer.UserId, "avatarContextMenu")
		end
	end, ThemeHandler_upvr:GetTheme())
	any_MakeStyledButton_result1_2.LayoutOrder = var16_upvw + 4
	any_MakeStyledButton_result1_2.Parent = arg1.MenuItemFrame
end
local function findFirstTextChannel_upvr() -- Line 289, Named "findFirstTextChannel"
	--[[ Upvalues[2]:
		[1]: TextChatService_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local RBXGeneral = TextChatService_upvr:FindFirstChild("RBXGeneral", true)
	if RBXGeneral then
		return RBXGeneral
	end
	for _, v_2 in ipairs(TextChatService_upvr:GetDescendants()) do
		if v_2:IsA("TextSource") and v_2.UserId == Players_upvr.LocalPlayer.UserId and v_2.CanSend == true and v_2.Parent:IsA("TextChannel") then
			return v_2.Parent
		end
	end
	return nil
end
local function _(arg1) -- Line 310, Named "isExperienceChatOn"
	local pcall_result1_2, _ = pcall(function() -- Line 311
	end)
	if pcall_result1_2 and arg1.ChatVersion == Enum.ChatVersion.TextChatService then
		return true
	end
	return false
end
local FFlagWaveEmoteOnAvatarContextMenuWithExpChat_upvr = require(Modules.Common.Flags.FFlagWaveEmoteOnAvatarContextMenuWithExpChat)
function module_upvr_2.CreateEmoteButton(arg1) -- Line 323
	--[[ Upvalues[8]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: FFlagWaveEmoteOnAvatarContextMenuWithExpChat_upvr (readonly)
		[4]: findFirstTextChannel_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: ThemeHandler_upvr (readonly)
		[8]: var16_upvw (read and write)
	]]
	local any_MakeStyledButton_result1 = module_upvr:MakeStyledButton("Wave", RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.Wave"), UDim2.new(0.96, 0, 0, 52), function() -- Line 324, Named "wave"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: RbxAnalyticsService_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: FFlagWaveEmoteOnAvatarContextMenuWithExpChat_upvr (copied, readonly)
			[5]: findFirstTextChannel_upvr (copied, readonly)
		]]
		if arg1.CloseMenuFunc then
			arg1:CloseMenuFunc()
		end
		RbxAnalyticsService_upvr:ReportCounter("AvatarContextMenu-Wave")
		RbxAnalyticsService_upvr:TrackEvent("Game", "AvatarContextMenuWave", "placeId: "..tostring(game.PlaceId))
		Players_upvr:Chat("/e wave")
		local pcall_result1_4, _ = pcall(function() -- Line 311
		end)
		local var59
		if pcall_result1_4 and arg1.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
			var59 = true
		else
		end
		if false and FFlagWaveEmoteOnAvatarContextMenuWithExpChat_upvr and findFirstTextChannel_upvr() then
			findFirstTextChannel_upvr():SendAsync("/e wave")
		end
	end, ThemeHandler_upvr:GetTheme())
	any_MakeStyledButton_result1.LayoutOrder = var16_upvw + 5
	any_MakeStyledButton_result1.Parent = arg1.MenuItemFrame
end
local FFlagWhisperEmoteOnAvatarContextMenuWithExpChat_upvr = require(Modules.Common.Flags.FFlagWhisperEmoteOnAvatarContextMenuWithExpChat)
local ExpChat_upvr = require(CorePackages.Workspace.Packages.ExpChat)
local FFlagAvatarContextMenuItemsChatButtonRefactor_upvr = require(Modules.Flags.FFlagAvatarContextMenuItemsChatButtonRefactor)
local ArgCheck_upvr = require(CorePackages.Workspace.Packages.ArgCheck)
local any_interface_result1_upvr = t.interface({
	localPlayerChatEnabled = t.boolean;
	localPlayerCanChatWithSelectedPlayer = t.boolean;
})
local Chat_upvr = game:GetService("Chat")
local RunService_upvr = game:GetService("RunService")
function module_upvr_2.CreateChatButton(arg1, arg2) -- Line 361
	--[[ Upvalues[15]:
		[1]: FFlagWhisperEmoteOnAvatarContextMenuWithExpChat_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: findFirstTextChannel_upvr (readonly)
		[4]: ExpChat_upvr (readonly)
		[5]: RobloxGui_upvr (readonly)
		[6]: var13_upvw (read and write)
		[7]: RobloxTranslator_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: ThemeHandler_upvr (readonly)
		[10]: var16_upvw (read and write)
		[11]: FFlagAvatarContextMenuItemsChatButtonRefactor_upvr (readonly)
		[12]: ArgCheck_upvr (readonly)
		[13]: any_interface_result1_upvr (readonly)
		[14]: Chat_upvr (readonly)
		[15]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local var69_upvr = FFlagWhisperEmoteOnAvatarContextMenuWithExpChat_upvr
	if not var69_upvr then
		local pcall_result1_3, _ = pcall(function() -- Line 311
		end)
		local var73
		if pcall_result1_3 and arg1.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
			var73 = true
		else
			var73 = false
		end
		if var73 then return end
	end
	local var74_upvw = false
	local any_MakeStyledButton_result1_4, any_MakeStyledButton_result2 = module_upvr:MakeStyledButton("ChatStatus", RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.Chat"), UDim2.new(0.96, 0, 0, 52), function() -- Line 368, Named "chatFunc"
		--[[ Upvalues[8]:
			[1]: var74_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: RbxAnalyticsService_upvr (copied, readonly)
			[4]: var69_upvr (readonly)
			[5]: findFirstTextChannel_upvr (copied, readonly)
			[6]: ExpChat_upvr (copied, readonly)
			[7]: RobloxGui_upvr (copied, readonly)
			[8]: var13_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end, ThemeHandler_upvr:GetTheme())
	any_MakeStyledButton_result1_4.LayoutOrder = var16_upvw + 3
	local var77
	if FFlagAvatarContextMenuItemsChatButtonRefactor_upvr then
		ArgCheck_upvr.assert(any_interface_result1_upvr(arg2))
		var77 = arg2.localPlayerChatEnabled
	else
		local pcall_result1, pcall_result2 = pcall(function() -- Line 423
			--[[ Upvalues[2]:
				[1]: Chat_upvr (copied, readonly)
				[2]: var13_upvw (copied, read and write)
			]]
			return Chat_upvr:CanUserChatAsync(var13_upvw.UserId)
		end)
		local var81 = pcall_result1
		if var81 then
			var81 = RunService_upvr:IsStudio() or pcall_result2
		end
		var77 = var81
	end
	if var77 then
		any_MakeStyledButton_result1_4.Parent = arg1.MenuItemFrame
		local var82
		if FFlagAvatarContextMenuItemsChatButtonRefactor_upvr then
			var82 = arg2.localPlayerCanChatWithSelectedPlayer
		else
			var82 = module_upvr:GetCanChatWith(arg1.SelectedPlayer)
		end
		if not var82 then
			var74_upvw = true
			any_MakeStyledButton_result1_4.Selectable = false
			any_MakeStyledButton_result2.TextTransparency = 0.75
			any_MakeStyledButton_result2.Text = RobloxTranslator_upvr:FormatByKey("Corescripts.AvatarContextMenu.ChatDisabled")
			-- KONSTANTWARNING: GOTO [121] #98
		end
	else
		any_MakeStyledButton_result1_4.Parent = nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [121] 98. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [121] 98. Error Block 23 end (CF ANALYSIS FAILED)
end
function module_upvr_2.RemoveLastButtonUnderline(arg1) -- Line 450
	local var90
	for _, v_3 in pairs(arg1.MenuItemFrame:GetChildren()) do
		if v_3:IsA("GuiObject") and -1 < v_3.LayoutOrder then
			var90 = v_3
		end
	end
	if var90 and var90:FindFirstChild("Underline") then
		var90:FindFirstChild("Underline"):Destroy()
	end
end
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
function module_upvr_2.BuildContextMenuItems(arg1, arg2, arg3) -- Line 468
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: BlockingUtility_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if not arg2 then
	else
		arg1:ClearMenuItems()
		arg1:SetSelectedPlayer(arg2)
		if tbl_upvr[Enum.AvatarContextMenuOption.Friend] then
			arg1:CreateFriendButton(module_upvr:GetFriendStatus(arg2), BlockingUtility_upvr:IsPlayerBlockedByUserId(arg2.UserId))
		end
		if tbl_upvr[Enum.AvatarContextMenuOption.Chat] then
			arg1:CreateChatButton(arg3)
		end
		if tbl_upvr[Enum.AvatarContextMenuOption.Emote] then
			arg1:CreateEmoteButton()
		end
		if tbl_upvr[Enum.AvatarContextMenuOption.InspectMenu] then
			arg1:CreateInspectAndBuyButton()
		end
		arg1:CreateCustomMenuItems()
		arg1:RemoveLastButtonUnderline()
	end
end
function module_upvr_2.SetSelectedPlayer(arg1, arg2) -- Line 495
	arg1.SelectedPlayer = arg2
end
function module_upvr_2.SetCloseMenuFunc(arg1, arg2) -- Line 499
	arg1.CloseMenuFunc = arg2
end
function module_upvr_2.new(arg1, arg2) -- Line 503
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: TextChatService_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_2)
	setmetatable_result1.MenuItemFrame = arg1
	setmetatable_result1.SelectedPlayer = nil
	local var93
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var93 = arg2.TextChatService
		return var93
	end
	if not arg2 or not INLINED() then
		var93 = TextChatService_upvr
	end
	setmetatable_result1.TextChatService = var93
	var93 = setmetatable_result1:RegisterCoreMethods
	var93()
	var93 = module_upvr_2:UpdateInspectMenuEnabled
	var93()
	return setmetatable_result1
end
GuiService_upvr.InspectMenuEnabledChangedSignal:Connect(function(arg1) -- Line 517
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if not arg1 then
		module_upvr_2:RemoveDefaultMenuItem(Enum.AvatarContextMenuOption.InspectMenu)
	else
		module_upvr_2:EnableDefaultMenuItem(Enum.AvatarContextMenuOption.InspectMenu)
	end
end)
return module_upvr_2