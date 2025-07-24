-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:46
-- Luau version 6, Types version 3
-- Time taken: 0.003838 seconds

local tbl_5_upvr = {4358041}
local tbl_3_upvr = {7842878}
local ServerUtil_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Server.ServerUtil)
local RunService_upvr = game:GetService("RunService")
local Url_upvr = require(game:GetService("CorePackages").Workspace.Packages.CoreScriptsCommon).Url
local HttpService_upvr = game:GetService("HttpService")
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AllowLuobuFreecamGroup", false)
local PolicyService_upvr = game:GetService("PolicyService")
local Players_upvr = game:GetService("Players")
return function() -- Line 30, Named "Install"
	--[[ Upvalues[10]:
		[1]: ServerUtil_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: Url_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: HttpRbxApiService_upvr (readonly)
		[6]: tbl_5_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: PolicyService_upvr (readonly)
		[9]: tbl_3_upvr (readonly)
		[10]: Players_upvr (readonly)
	]]
	local function WaitForChildOfClass_upvr(arg1, arg2) -- Line 31, Named "WaitForChildOfClass"
		local var15
		while not (not var15 or var15.ClassName == arg2) do
			var15 = arg1.ChildAdded:Wait()
		end
		return var15
	end
	local function AddFreeCamera_upvr(arg1) -- Line 39, Named "AddFreeCamera"
		--[[ Upvalues[2]:
			[1]: WaitForChildOfClass_upvr (readonly)
			[2]: ServerUtil_upvr (copied, readonly)
		]]
		local ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Name = "Freecam"
		ScreenGui.ResetOnSpawn = false
		local LocalScript = Instance.new("LocalScript")
		LocalScript.Name = "FreecamScript"
		if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
			LocalScript.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent:WaitForChild("FreeCamera"))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			LocalScript.Source = script.Parent:WaitForChild("FreeCamera").Source
		end
		LocalScript.Parent = ScreenGui
		ScreenGui.Parent = WaitForChildOfClass_upvr(arg1, "PlayerGui")
	end
	local function ShouldAddFreeCam_upvr(arg1) -- Line 60, Named "ShouldAddFreeCam"
		--[[ Upvalues[8]:
			[1]: RunService_upvr (copied, readonly)
			[2]: Url_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: HttpRbxApiService_upvr (copied, readonly)
			[5]: tbl_5_upvr (copied, readonly)
			[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[7]: PolicyService_upvr (copied, readonly)
			[8]: tbl_3_upvr (copied, readonly)
		]]
		if RunService_upvr:IsStudio() then
			return true
		end
		if arg1.UserId <= 0 then
			return false
		end
		local pcall_result1, pcall_result2_3 = pcall(function() -- Line 68
			--[[ Upvalues[4]:
				[1]: Url_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: HttpRbxApiService_upvr (copied, readonly)
			]]
			return HttpService_upvr:JSONDecode(HttpRbxApiService_upvr:PostAsyncFullUrl(string.format(Url_upvr.APIS_URL.."asset-permissions-api/v1/rcc/assets/check-permissions"), HttpService_upvr:JSONEncode({
				requests = {{
					subject = {
						subjectType = "User";
						subjectId = arg1.UserId;
					};
					action = "Edit";
					assetId = game.PlaceId;
				}};
			})))
		end)
		if pcall_result1 then
			local _1 = pcall_result2_3.results[1]
			if _1.value and _1.value.status == "HasPermission" then
				return true
			end
		end
		for _, v in ipairs(tbl_5_upvr) do
			local pcall_result1_6, pcall_result2_5 = pcall(arg1.IsInGroup, arg1, v)
			if pcall_result1_6 and pcall_result2_5 then
				return true
			end
		end
		if game_DefineFastFlag_result1_upvr and game:GetEngineFeature("LuobuModerationStatus") and PolicyService_upvr.IsLuobuServer == Enum.TriStateBoolean.True then
			for _, v_2 in ipairs(tbl_3_upvr) do
				local pcall_result1_2, pcall_result2_4 = pcall(arg1.IsInGroup, arg1, v_2)
				if pcall_result1_2 and pcall_result2_4 then
					return true
				end
			end
		end
		return false
	end
	local function PlayerAdded(arg1) -- Line 118
		--[[ Upvalues[2]:
			[1]: ShouldAddFreeCam_upvr (readonly)
			[2]: AddFreeCamera_upvr (readonly)
		]]
		if ShouldAddFreeCam_upvr(arg1) then
			AddFreeCamera_upvr(arg1)
		end
	end
	Players_upvr.PlayerAdded:Connect(PlayerAdded)
	for _, v_3 in ipairs(Players_upvr:GetPlayers()) do
		coroutine.wrap(PlayerAdded)(v_3)
	end
end