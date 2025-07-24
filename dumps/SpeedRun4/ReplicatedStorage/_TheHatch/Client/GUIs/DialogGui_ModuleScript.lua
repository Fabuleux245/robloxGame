-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:06
-- Luau version 6, Types version 3
-- Time taken: 0.006372 seconds

local spr_upvr = require(script.Parent.spr)
local module_upvr = {}
local function noop_upvr() -- Line 54, Named "noop"
end
local Maid_upvr = require(script.Parent.Maid)
function module_upvr.new(arg1) -- Line 56
	--[[ Upvalues[3]:
		[1]: noop_upvr (readonly)
		[2]: Maid_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.instance = arg1
	tbl_2.dialog = nil
	tbl_2.category = 1
	tbl_2.experience = 1
	tbl_2.title = "Experience"
	tbl_2.onAccept = noop_upvr
	tbl_2.onDecline = noop_upvr
	tbl_2.maid = Maid_upvr.new()
	local setmetatable_result1 = setmetatable(tbl_2, {
		__index = module_upvr;
	})
	setmetatable_result1:init()
	return setmetatable_result1
end
function module_upvr.promptNextGame(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 73
	arg1.experience = arg2
	arg1.title = arg3
	arg1.category = arg4
	arg1.onAccept = arg5
	arg1.onDecline = arg6
	arg1:updateGameThumbnail()
	arg1:setDialog("NextGame")
end
function module_upvr.promptTeleportError(arg1, arg2, arg3) -- Line 90
	--[[ Upvalues[1]:
		[1]: noop_upvr (readonly)
	]]
	arg1.onAccept = arg2
	arg1.onDecline = noop_upvr
	arg1:setDialog("TeleportError")
	arg1.instance.TeleportError.Titlebar.Content.Caption.Text = tostring(arg3)
end
function module_upvr.promptJoinHub(arg1, arg2) -- Line 98
	--[[ Upvalues[1]:
		[1]: noop_upvr (readonly)
	]]
	arg1.onAccept = arg2
	arg1.onDecline = noop_upvr
	arg1:setDialog("JoinHub")
end
function module_upvr.closeDialog(arg1) -- Line 104
	--[[ Upvalues[1]:
		[1]: noop_upvr (readonly)
	]]
	arg1.onAccept = noop_upvr
	arg1.onDecline = noop_upvr
	arg1:setDialog(nil)
end
function module_upvr.updateDialogVisibility(arg1, arg2, arg3) -- Line 110
	if not arg2 then
	else
		local instance_upvr = arg1.instance
		if arg3 then
			instance_upvr[arg2].Visible = true
			arg1.maid[`delay{arg2}`] = nil
			return
		end
		arg1.maid[`delay{arg2}`] = task.delay(1, function() -- Line 121
			--[[ Upvalues[2]:
				[1]: instance_upvr (readonly)
				[2]: arg2 (readonly)
			]]
			instance_upvr[arg2].Visible = false
		end)
	end
end
function module_upvr.setDialog(arg1, arg2) -- Line 127
	--[[ Upvalues[1]:
		[1]: spr_upvr (readonly)
	]]
	arg1:updateDialogVisibility(arg1.dialog, false)
	arg1:updateDialogVisibility(arg2, true)
	arg1.dialog = arg2
	local tbl_3 = {}
	local var10
	if arg2 == "NextGame" then
		var10 = UDim2.fromScale(0.5, 0.5)
	else
		var10 = UDim2.fromScale(0.5, 1.5)
	end
	tbl_3.Position = var10
	spr_upvr.target(arg1.instance.NextGame, 0.8, 2, tbl_3)
	local tbl = {}
	if arg2 == "TeleportError" then
		var10 = UDim2.fromScale(0.5, 0.5)
	else
		var10 = UDim2.fromScale(0.5, 1.5)
	end
	tbl.Position = var10
	spr_upvr.target(arg1.instance.TeleportError, 0.8, 2, tbl)
	local tbl_4 = {}
	if arg2 == "JoinHub" then
		var10 = UDim2.fromScale(0.5, 0.5)
	else
		var10 = UDim2.fromScale(0.5, 1.5)
	end
	tbl_4.Position = var10
	spr_upvr.target(arg1.instance.JoinHub, 0.8, 2, tbl_4)
	local tbl_5 = {}
	if arg2 then
		var10 = 0.4
	else
		var10 = 1
	end
	tbl_5.BackgroundTransparency = var10
	spr_upvr.target(arg1.instance.Focus, 1, 1, tbl_5)
end
local Theme_upvr = require(script.Parent.Theme)
function module_upvr.updateGameThumbnail(arg1) -- Line 149
	--[[ Upvalues[1]:
		[1]: Theme_upvr (readonly)
	]]
	local Content = arg1.instance.NextGame.Content
	local any_lighten_result1 = Theme_upvr.lighten(Theme_upvr.categories[arg1.category].color, 0.1)
	Content.Thumbnail.Image = `rbxthumb://type=GameThumbnail&id={arg1.experience}&w=384&h=216`
	Content.Thumbnail.Title.Caption.Text = arg1.title
	Content.Thumbnail.UIStroke.Color = Theme_upvr.plusDarker(any_lighten_result1, 0.5)
	Content.Thumbnail.Box.UIStroke.Color = any_lighten_result1
end
function module_upvr.init(arg1) -- Line 161
	--[[ Upvalues[1]:
		[1]: spr_upvr (readonly)
	]]
	local instance_upvr_2 = arg1.instance
	arg1.maid:Add(instance_upvr_2.NextGame.Content.AcceptButton.Activated:Connect(function() -- Line 164
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		task.defer(arg1.onAccept)
		arg1:closeDialog()
	end))
	arg1.maid:Add(instance_upvr_2.NextGame.Content.DeclineButton.Activated:Connect(function() -- Line 169
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		task.defer(arg1.onDecline)
		arg1:closeDialog()
	end))
	arg1.maid:Add(instance_upvr_2.NextGame.CloseButton.Activated:Connect(function() -- Line 174
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:closeDialog()
	end))
	arg1.maid:Add(instance_upvr_2.TeleportError.Content.AcceptButton.Activated:Connect(function() -- Line 178
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		task.defer(arg1.onAccept)
		arg1:closeDialog()
	end))
	arg1.maid:Add(instance_upvr_2.TeleportError.Content.DeclineButton.Activated:Connect(function() -- Line 183
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:closeDialog()
	end))
	arg1.maid:Add(instance_upvr_2.JoinHub.Content.AcceptButton.Activated:Connect(function() -- Line 187
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		task.defer(arg1.onAccept)
		arg1:closeDialog()
	end))
	arg1.maid:Add(instance_upvr_2.JoinHub.Content.DeclineButton.Activated:Connect(function() -- Line 192
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:closeDialog()
	end))
	instance_upvr_2.NextGame.Position = UDim2.fromScale(0.5, 1.5)
	instance_upvr_2.TeleportError.Position = UDim2.fromScale(0.5, 1.5)
	instance_upvr_2.JoinHub.Position = UDim2.fromScale(0.5, 1.5)
	instance_upvr_2.NextGame.Visible = false
	instance_upvr_2.TeleportError.Visible = false
	instance_upvr_2.JoinHub.Visible = false
	instance_upvr_2.Enabled = true
	arg1.maid:Add(function() -- Line 206
		--[[ Upvalues[2]:
			[1]: spr_upvr (copied, readonly)
			[2]: instance_upvr_2 (readonly)
		]]
		spr_upvr.stop(instance_upvr_2.NextGame)
		spr_upvr.stop(instance_upvr_2.TeleportError)
		spr_upvr.stop(instance_upvr_2.JoinHub)
		instance_upvr_2.Enabled = false
	end)
end
function module_upvr.Destroy(arg1) -- Line 214
	arg1.maid:DoCleaning()
end
return module_upvr