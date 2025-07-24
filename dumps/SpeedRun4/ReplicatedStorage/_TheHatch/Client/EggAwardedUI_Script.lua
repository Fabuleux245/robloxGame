-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:02
-- Luau version 6, Types version 3
-- Time taken: 0.004407 seconds

local Players_upvr = game:GetService("Players")
local _TheHatch_upvr = game:GetService("ReplicatedStorage"):WaitForChild("_TheHatch")
local GUIs_upvr = script.Parent:WaitForChild("GUIs")
local module_4_upvr = require(GUIs_upvr:WaitForChild("AutoScale"))
local module_upvr_2 = require(GUIs_upvr:WaitForChild("DialogGui"))
local module_3_upvr = require(GUIs_upvr:WaitForChild("HatchingGui"))
local module_2_upvr = require(GUIs_upvr:WaitForChild("EggSlot"))
local module_upvr_3 = require(GUIs_upvr:WaitForChild("ButtonAnimated"))
local module_upvr = require(GUIs_upvr:WaitForChild("CloseButton"))
local RunService_upvr = game:GetService("RunService")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local TeleportService_upvr = game:GetService("TeleportService")
_TheHatch_upvr:WaitForChild("Remotes").Awarded.OnClientEvent:Connect(function(arg1) -- Line 23
	--[[ Upvalues[12]:
		[1]: GUIs_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_3_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_4_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: _TheHatch_upvr (readonly)
		[10]: RunService_upvr (readonly)
		[11]: MarketplaceService_upvr (readonly)
		[12]: TeleportService_upvr (readonly)
	]]
	local DialogGui = GUIs_upvr.DialogGui.DialogGui
	local HatchingGui = GUIs_upvr.HatchingGui.HatchingGui
	local module = require(script.Parent:WaitForChild("Translations"))
	module.translateUI({
		["portal.title"] = DialogGui.JoinHub.Titlebar.Content.Title;
		["portal.subtitle"] = DialogGui.JoinHub.Titlebar.Content.Caption;
		["portal.description-a"] = DialogGui.JoinHub.Content.BodyA;
		["portal.description-b"] = DialogGui.JoinHub.Content.BodyB;
		["portal.go-to-hub"] = DialogGui.JoinHub.Content.AcceptButton.Label;
		["portal.cancel"] = DialogGui.JoinHub.Content.DeclineButton.Label;
	})
	module.translateUI({
		["join.title"] = DialogGui.NextGame.Titlebar.Content.Title;
		["join.subtitle"] = DialogGui.NextGame.Titlebar.Content.Caption;
		["join.play-next"] = DialogGui.NextGame.Content.AcceptButton;
		["join.return"] = DialogGui.NextGame.Content.DeclineButton;
	})
	module.translateUI({
		["teleport-fail.title"] = DialogGui.TeleportError.Titlebar.Content.Title;
		["teleport-fail.subtitle"] = DialogGui.TeleportError.Titlebar.Content.Caption;
		["teleport-fail.description"] = DialogGui.TeleportError.Content.Caption;
		["teleport-fail.back-to-hub"] = DialogGui.TeleportError.Content.AcceptButton;
		["teleport-fail.cancel"] = DialogGui.TeleportError.Content.DeclineButton;
	})
	local any_new_result1_upvr = module_upvr_2.new(DialogGui)
	module_4_upvr.new(DialogGui.UIScale)
	module_4_upvr.new(HatchingGui.UIScale)
	module_upvr_3.new(DialogGui.JoinHub.Content.AcceptButton)
	module_upvr_3.new(DialogGui.JoinHub.Content.DeclineButton)
	module_upvr_3.new(DialogGui.NextGame.Content.AcceptButton)
	module_upvr_3.new(DialogGui.NextGame.Content.DeclineButton)
	module_upvr.new(DialogGui.NextGame.CloseButton)
	module_upvr_3.new(DialogGui.TeleportError.Content.AcceptButton)
	module_upvr_3.new(DialogGui.TeleportError.Content.DeclineButton)
	DialogGui.Parent = Players_upvr.LocalPlayer.PlayerGui
	HatchingGui.Parent = Players_upvr.LocalPlayer.PlayerGui
	module_3_upvr.new(HatchingGui).playAnimation(arg1.category, arg1.index, 1)
	local var21_upvw
	local function _(arg1_2) -- Line 84, Named "teleportToHub"
		--[[ Upvalues[2]:
			[1]: var21_upvw (read and write)
			[2]: _TheHatch_upvr (copied, readonly)
		]]
		var21_upvw = arg1_2
		_TheHatch_upvr.Remotes.TeleportToHub:InvokeServer()
	end
	local function _() -- Line 89, Named "showStudioTeleportError"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		any_new_result1_upvr:promptTeleportError(function() -- Line 90
		end, "Cannot teleport from Studio")
	end
	local function showTeleportUI_upvr(arg1_3) -- Line 93, Named "showTeleportUI"
		--[[ Upvalues[6]:
			[1]: RunService_upvr (copied, readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: var21_upvw (read and write)
			[4]: _TheHatch_upvr (copied, readonly)
			[5]: MarketplaceService_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		if arg1_3 then
			local place_id_upvr = arg1_3.place_id
			local function _() -- Line 100, Named "teleportToNextGame"
				--[[ Upvalues[5]:
					[1]: RunService_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: var21_upvw (copied, read and write)
					[4]: place_id_upvr (readonly)
					[5]: _TheHatch_upvr (copied, readonly)
				]]
				if RunService_upvr:IsStudio() then
					any_new_result1_upvr:promptTeleportError(function() -- Line 90
					end, "Cannot teleport from Studio")
				else
					var21_upvw = place_id_upvr
					_TheHatch_upvr.Remotes.TeleportToNextPlace:InvokeServer(place_id_upvr)
				end
			end
			local var25_upvw = ""
			pcall(function() -- Line 110
				--[[ Upvalues[3]:
					[1]: var25_upvw (read and write)
					[2]: MarketplaceService_upvr (copied, readonly)
					[3]: place_id_upvr (readonly)
				]]
				var25_upvw = MarketplaceService_upvr:GetProductInfo(place_id_upvr).Name
			end)
			local origin_place_id_upvr = arg1_3.origin_place_id
			any_new_result1_upvr:promptNextGame(place_id_upvr, var25_upvw, 1, function() -- Line 114, Named "onJoinGame"
				--[[ Upvalues[5]:
					[1]: RunService_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: var21_upvw (copied, read and write)
					[4]: place_id_upvr (readonly)
					[5]: _TheHatch_upvr (copied, readonly)
				]]
				if RunService_upvr:IsStudio() then
					any_new_result1_upvr:promptTeleportError(function() -- Line 90
					end, "Cannot teleport from Studio")
				else
					var21_upvw = place_id_upvr
					_TheHatch_upvr.Remotes.TeleportToNextPlace:InvokeServer(place_id_upvr)
				end
			end, function() -- Line 118, Named "onReturnToHub"
				--[[ Upvalues[3]:
					[1]: origin_place_id_upvr (readonly)
					[2]: var21_upvw (copied, read and write)
					[3]: _TheHatch_upvr (copied, readonly)
				]]
				var21_upvw = origin_place_id_upvr
				_TheHatch_upvr.Remotes.TeleportToHub:InvokeServer()
			end)
		else
			place_id_upvr = arg1.teleport_enabled
			if place_id_upvr then
				place_id_upvr = any_new_result1_upvr
				function origin_place_id_upvr() -- Line 128
					--[[ Upvalues[2]:
						[1]: var21_upvw (copied, read and write)
						[2]: _TheHatch_upvr (copied, readonly)
					]]
					var21_upvw = 98209635344835
					_TheHatch_upvr.Remotes.TeleportToHub:InvokeServer()
				end
				place_id_upvr = place_id_upvr:promptJoinHub
				place_id_upvr(origin_place_id_upvr)
			end
		end
	end
	local var31_upvw
	TeleportService_upvr.TeleportInitFailed:connect(function(arg1_4, arg2, arg3, arg4, arg5) -- Line 134
		--[[ Upvalues[5]:
			[1]: var21_upvw (read and write)
			[2]: var31_upvw (read and write)
			[3]: _TheHatch_upvr (copied, readonly)
			[4]: showTeleportUI_upvr (readonly)
			[5]: any_new_result1_upvr (readonly)
		]]
		if arg4 == var21_upvw then
			if arg2 == Enum.TeleportResult.Unauthorized then
				var31_upvw = arg4
				local any_InvokeServer_result1 = _TheHatch_upvr.Remotes.GetNextDestination:InvokeServer(var31_upvw)
				if any_InvokeServer_result1 then
					showTeleportUI_upvr(any_InvokeServer_result1)
				else
					any_new_result1_upvr:promptJoinHub(function() -- Line 142
						--[[ Upvalues[2]:
							[1]: var21_upvw (copied, read and write)
							[2]: _TheHatch_upvr (copied, readonly)
						]]
						var21_upvw = 98209635344835
						_TheHatch_upvr.Remotes.TeleportToHub:InvokeServer()
					end)
				end
			end
			any_new_result1_upvr:promptTeleportError(function() -- Line 147
				--[[ Upvalues[2]:
					[1]: var21_upvw (copied, read and write)
					[2]: _TheHatch_upvr (copied, readonly)
				]]
				var21_upvw = 98209635344835
				_TheHatch_upvr.Remotes.TeleportToHub:InvokeServer()
			end, arg3)
		end
	end)
	task.delay(4.5, function() -- Line 154
		--[[ Upvalues[2]:
			[1]: showTeleportUI_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		showTeleportUI_upvr(arg1.teleport_destination)
	end)
end)
local var37_upvw
local var38_upvw
local module_5_upvr = require(GUIs_upvr:WaitForChild("DevHint"))
local var40_upvw
_TheHatch_upvr:WaitForChild("Remotes").DisplayHint.OnClientEvent:Connect(function(arg1) -- Line 163
	--[[ Upvalues[6]:
		[1]: var37_upvw (read and write)
		[2]: var38_upvw (read and write)
		[3]: module_5_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: module_4_upvr (readonly)
		[6]: var40_upvw (read and write)
	]]
	if var37_upvw == nil then
		var37_upvw = script.Parent.GUIs:WaitForChild("DevHint").DevHint
		var38_upvw = module_5_upvr.new(var37_upvw)
		var37_upvw.Parent = Players_upvr.LocalPlayer.PlayerGui
	end
	var38_upvw:show(arg1.hint)
	var37_upvw.Enabled = true
	module_4_upvr.new(var37_upvw.UIScale)
	if var40_upvw then
		task.cancel(var40_upvw)
		var40_upvw = nil
	end
	if arg1.duration then
	end
	var40_upvw = task.delay(30, function() -- Line 183
		--[[ Upvalues[1]:
			[1]: var38_upvw (copied, read and write)
		]]
		var38_upvw:hide()
	end)
end)