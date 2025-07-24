-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:07
-- Luau version 6, Types version 3
-- Time taken: 0.002999 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local NotificationModalBase_upvr = require(script.Parent.Components.NotificationModalBase)
local var4_upvw
local tbl_2_upvw = {}
local function _(arg1) -- Line 14, Named "UpdateRoot"
	--[[ Upvalues[4]:
		[1]: tbl_2_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: React_upvr (readonly)
		[4]: NotificationModalBase_upvr (readonly)
	]]
	if tbl_2_upvw and tbl_2_upvw.ModalKey ~= arg1.ModalKey and tbl_2_upvw.Params and tbl_2_upvw.Params.CloseCallback then
		tbl_2_upvw.Params.CloseCallback()
	end
	tbl_2_upvw = arg1
	var4_upvw:render(React_upvr.createElement(NotificationModalBase_upvr, arg1))
end
local getFFlagUseCoreGuiGetService_upvr = require(Parent.SharedFlags).getFFlagUseCoreGuiGetService
local ReactRoblox_upvr = require(Parent.ReactRoblox)
return {
	OpenModal = function(arg1, arg2, arg3) -- Line 29
		--[[ Upvalues[6]:
			[1]: var4_upvw (read and write)
			[2]: getFFlagUseCoreGuiGetService_upvr (readonly)
			[3]: ReactRoblox_upvr (readonly)
			[4]: tbl_2_upvw (read and write)
			[5]: React_upvr (readonly)
			[6]: NotificationModalBase_upvr (readonly)
		]]
		if not var4_upvw then
			local Folder = Instance.new("Folder")
			local var12 = "NotificationModals"
			Folder.Name = var12
			if getFFlagUseCoreGuiGetService_upvr() then
				var12 = game:GetService("CoreGui")
			else
				var12 = game.CoreGui
			end
			Folder.Parent = var12
			var4_upvw = ReactRoblox_upvr.createRoot(Folder)
		end
		local tbl = {}
		tbl.ModalKey = arg1
		tbl.Component = arg2
		tbl.Params = arg3
		function tbl.CloseModal() -- Line 41
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: var4_upvw (copied, read and write)
				[3]: tbl_2_upvw (copied, read and write)
				[4]: React_upvr (copied, readonly)
				[5]: NotificationModalBase_upvr (copied, readonly)
			]]
			if var4_upvw and arg1 == tbl_2_upvw.ModalKey then
				local tbl_4 = {}
				if tbl_2_upvw and tbl_2_upvw.ModalKey ~= tbl_4.ModalKey and tbl_2_upvw.Params and tbl_2_upvw.Params.CloseCallback then
					tbl_2_upvw.Params.CloseCallback()
				end
				tbl_2_upvw = tbl_4
				var4_upvw:render(React_upvr.createElement(NotificationModalBase_upvr, tbl_4))
			end
		end
		if tbl_2_upvw and tbl_2_upvw.ModalKey ~= tbl.ModalKey and tbl_2_upvw.Params and tbl_2_upvw.Params.CloseCallback then
			tbl_2_upvw.Params.CloseCallback()
		end
		tbl_2_upvw = tbl
		var4_upvw:render(React_upvr.createElement(NotificationModalBase_upvr, tbl))
		return true
	end;
	CloseModal = function(arg1) -- Line 23
		--[[ Upvalues[4]:
			[1]: var4_upvw (read and write)
			[2]: tbl_2_upvw (read and write)
			[3]: React_upvr (readonly)
			[4]: NotificationModalBase_upvr (readonly)
		]]
		if var4_upvw and arg1 == tbl_2_upvw.ModalKey then
			local tbl_3 = {}
			if tbl_2_upvw and tbl_2_upvw.ModalKey ~= tbl_3.ModalKey and tbl_2_upvw.Params and tbl_2_upvw.Params.CloseCallback then
				tbl_2_upvw.Params.CloseCallback()
			end
			tbl_2_upvw = tbl_3
			var4_upvw:render(React_upvr.createElement(NotificationModalBase_upvr, tbl_3))
		end
	end;
}