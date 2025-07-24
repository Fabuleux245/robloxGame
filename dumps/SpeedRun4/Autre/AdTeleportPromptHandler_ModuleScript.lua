-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:37
-- Luau version 6, Types version 3
-- Time taken: 0.008465 seconds

local CorePackages = game:GetService("CorePackages")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local CoreGui_upvr = game:GetService("CoreGui")
local Players_upvr = game:GetService("Players")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local module_upvr = {}
module_upvr.__index = module_upvr
local any_createBinding_result1_upvr, any_createBinding_result2_upvr = Roact_upvr.createBinding(1)
function module_upvr.new(arg1, arg2) -- Line 20
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
	]]
	local var10
	if arg1.Parent == nil then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "Typechecker assurance, guaranteed by engine")
	var10 = {}
	local setmetatable_result1 = setmetatable(var10, module_upvr)
	var10 = nil
	setmetatable_result1.window = var10
	setmetatable_result1.portal = arg1
	var10 = false
	setmetatable_result1.hasActiveWindow = var10
	setmetatable_result1.destination = arg2
	var10 = true
	setmetatable_result1.fadingIn = var10
	var10 = false
	setmetatable_result1.movedAway = var10
	var10 = arg1.Parent
	setmetatable_result1.maxDistance = var10.Size.X / 2 + var10.Size.Z + 2
	setmetatable_result1.createTime = -1
	setmetatable_result1.focusController = RoactGamepad_upvr.createFocusController()
	return setmetatable_result1
end
function module_upvr.acceptPrompt(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	arg1.portal:TeleportConfirmed(arg1.destination, Players_upvr.LocalPlayer)
	arg1:closeWindow()
end
function module_upvr.rejectButton(arg1) -- Line 42
	arg1:rejectPrompt(true, false)
end
function module_upvr.rejectPrompt(arg1, arg2, arg3) -- Line 46
	arg1.portal:TeleportRejected(arg2, arg3)
	arg1:closeWindow()
end
local function _(arg1, arg2) -- Line 51, Named "getTransparencyFactor"
	local var12 = 1 - (1 - arg1 / arg2) ^ 3
	if 1 < var12 then
		var12 = 1
	end
	return var12
end
function module_upvr.onHeartbeat(arg1) -- Line 59
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: any_createBinding_result2_upvr (readonly)
	]]
	local var13
	if Players_upvr.LocalPlayer == nil then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "Typechecker assurance")
	if arg1.portal.Parent == nil then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "Typechecker assurance, guaranteed on engine side.")
	var13 = Players_upvr.LocalPlayer
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = Players_upvr.LocalPlayer.Character
		return var13.PrimaryPart == nil
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var13 = arg1.portal.Parent
		return var13.CFrame == nil
	end
	if var13.Character == nil or INLINED() or arg1.portal == nil or INLINED_2() then
		arg1:rejectPrompt(false, false)
	else
		local var14
		if arg1.fadingIn then
			var13 = DateTime.now()
			local createTime_2 = arg1.createTime
			var13 = var13.UnixTimestampMillis - createTime_2
			if 450 >= var13 then
				createTime_2 = false
			else
				createTime_2 = true
			end
			var14 = 1 - (1 - (450 - var13) / 450) ^ 3
			if 1 < var14 then
				var14 = 1
			end
			any_createBinding_result2_upvr(var14)
			if createTime_2 then
				arg1.fadingIn = false
				any_createBinding_result2_upvr(0)
			end
		end
		if Players_upvr.LocalPlayer.Character == nil then
			var13 = false
		else
			var13 = true
		end
		assert(var13, "Typechecker assurance, guaranteed above.")
		if Players_upvr.LocalPlayer.Character.PrimaryPart == nil then
			var13 = false
		else
			var13 = true
		end
		assert(var13, "Typechecker assurance guaranteed above.")
		var13 = arg1.portal.Parent
		var13 = Players_upvr.LocalPlayer.Character.PrimaryPart.Position
		if arg1.maxDistance < (var13 - var13.Position).Magnitude and not arg1.movedAway then
			arg1.createTime = DateTime.now().UnixTimestampMillis
			arg1.movedAway = true
			arg1.fadingIn = false
		end
		if arg1.movedAway then
			local createTime = arg1.createTime
			local var17 = DateTime.now().UnixTimestampMillis - createTime
			var14 = 450
			if var14 >= var17 then
				createTime = false
			else
				createTime = true
			end
			var14 = any_createBinding_result2_upvr
			local var18 = 1 - (1 - var17 / 450) ^ 3
			if 1 < var18 then
				var18 = 1
			end
			var14(var18)
			if createTime then
				var14 = arg1:rejectPrompt
				var14(false, true)
			end
		end
	end
end
local function _(arg1) -- Line 111, Named "isGamepad"
	local var19
	if arg1.Name:match("^Gamepad*") == nil then
		var19 = false
	else
		var19 = true
	end
	return var19
end
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.focusIfGamepad(arg1) -- Line 115
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local var21
	if UserInputService_upvr:GetLastInputType().Name:match("^Gamepad*") == nil then
		var21 = false
	else
		var21 = true
	end
	if var21 then
		var21 = arg1.focusController:captureFocus
		var21()
	end
end
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local AdTeleportPromptUI_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.Ads.AdTeleportPromptUI)
function module_upvr.instantiatePrompt(arg1, arg2, arg3) -- Line 121
	--[[ Upvalues[6]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AdTeleportPromptUI_upvr (readonly)
		[4]: RoactGamepad_upvr (readonly)
		[5]: any_createBinding_result1_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
	]]
	local Constants = UIBlox_upvr.App.Style.Constants
	local any_createBinding_result1, any_createBinding_result2_upvr_2 = Roact_upvr.createBinding(UDim2.fromOffset(0, 0))
	local tbl = {}
	tbl.shouldRenderCancelButton = arg3
	tbl.experienceName = arg2
	tbl.handler = arg1
	function tbl.onAbsoluteSizeChanged(arg1_2) -- Line 140
		--[[ Upvalues[1]:
			[1]: any_createBinding_result2_upvr_2 (readonly)
		]]
		any_createBinding_result2_upvr_2(UDim2.fromOffset(arg1_2.AbsoluteSize.X, arg1_2.AbsoluteSize.Y))
	end
	arg1.window = Roact_upvr.mount(Roact_upvr.createElement("ScreenGui", {
		ResetOnSpawn = false;
		IgnoreGuiInset = true;
		DisplayOrder = 1;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
	}, Roact_upvr.createElement(UIBlox_upvr.App.Style.AppStyleProvider, {
		style = ({
			Dark = {
				themeName = Constants.ThemeName.Dark;
				fontName = Constants.FontName.Gotham;
			};
		}).Dark;
	}, {
		CanvasGroup = Roact_upvr.createElement(RoactGamepad_upvr.Focusable.CanvasGroup, {
			focusController = arg1.focusController;
			Selectable = false;
			GroupTransparency = any_createBinding_result1_upvr;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = any_createBinding_result1;
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
		}, {
			Prompt = Roact_upvr.createElement(AdTeleportPromptUI_upvr, tbl);
		});
	})), CoreGui_upvr, "AdTeleportPrompt")
	arg1.hasActiveWindow = true
	arg1:focusIfGamepad()
end
local function _(arg1) -- Line 175, Named "fetchExperienceName"
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	return MarketplaceService_upvr:GetProductInfo(arg1).Name
end
function module_upvr.fetchTitle(arg1) -- Line 179
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	local Name = MarketplaceService_upvr:GetProductInfo(arg1.destination).Name
	if Name == "Grey Adidas Shoes" then
		error("Name not found.")
	else
		return Name
	end
end
function module_upvr.closeWindow(arg1) -- Line 188
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var36
	if arg1.hasActiveWindow ~= true then
		var36 = false
	else
		var36 = true
	end
	assert(var36, "Only way unmounting makes sense is if window is active.")
	var36 = Roact_upvr
	var36 = arg1.window
	var36.unmount(var36)
	arg1.hasActiveWindow = false
end
function module_upvr.updateCreateTime(arg1) -- Line 194
	arg1.createTime = DateTime.now().UnixTimestampMillis
end
return module_upvr