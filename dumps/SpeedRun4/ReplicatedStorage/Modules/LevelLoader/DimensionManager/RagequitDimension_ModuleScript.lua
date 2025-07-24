-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:02
-- Luau version 6, Types version 3
-- Time taken: 0.002621 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("UserInterface"):WaitForChild("NotificationsUI"))
local tbl_upvr = {
	DiedConnection = nil;
}
local any_AssertEnabled_result1 = require(script:FindFirstAncestor("LevelLoader"):WaitForChild("DimensionCommon")).AssertEnabled("Ragequit")
local module_upvr = require(Modules:WaitForChild("ClientData"))
function any_AssertEnabled_result1.Equip() -- Line 54
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	if module_upvr.LocalCharacterState and module_upvr.LocalCharacterState.Initialized then
		if tbl_upvr.DiedConnection then
			tbl_upvr.DiedConnection:Disconnect()
			tbl_upvr.DiedConnection = nil
		end
		tbl_upvr.DiedConnection = module_upvr.LocalCharacterState.Humanoid.Died:Connect(function() -- Line 37
			--[[ Upvalues[2]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: module_upvr_3 (copied, readonly)
			]]
			module_upvr_2.Popup.PurgeQueue(module_upvr_2.Popup.Type.FullScreenText)
			module_upvr_2.Popup.Queue(module_upvr_2.Popup.Create(module_upvr_2.Popup.Type.FullScreenText, "HAHAHA RAGE QUIT!!! REKT", {
				Font = Font.fromEnum(Enum.Font.ArialBold);
				Color = module_upvr_3.TextErrorColor1;
			}, math.huge, 0))
		end)
	end
end
function any_AssertEnabled_result1.Unequip() -- Line 63
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if tbl_upvr.DiedConnection then
		tbl_upvr.DiedConnection:Disconnect()
		tbl_upvr.DiedConnection = nil
	end
end
function any_AssertEnabled_result1.CharacterAdded(arg1) -- Line 33
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	if tbl_upvr.DiedConnection then
		tbl_upvr.DiedConnection:Disconnect()
		tbl_upvr.DiedConnection = nil
	end
	tbl_upvr.DiedConnection = arg1.Humanoid.Died:Connect(function() -- Line 37
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: module_upvr_3 (copied, readonly)
		]]
		module_upvr_2.Popup.PurgeQueue(module_upvr_2.Popup.Type.FullScreenText)
		module_upvr_2.Popup.Queue(module_upvr_2.Popup.Create(module_upvr_2.Popup.Type.FullScreenText, "HAHAHA RAGE QUIT!!! REKT", {
			Font = Font.fromEnum(Enum.Font.ArialBold);
			Color = module_upvr_3.TextErrorColor1;
		}, math.huge, 0))
	end)
end
function any_AssertEnabled_result1.CharacterRemoving() -- Line 26
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if tbl_upvr.DiedConnection then
		tbl_upvr.DiedConnection:Disconnect()
		tbl_upvr.DiedConnection = nil
	end
end
return any_AssertEnabled_result1