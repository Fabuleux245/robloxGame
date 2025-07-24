-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:37
-- Luau version 6, Types version 3
-- Time taken: 0.000848 seconds

local Parent = script.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local VRService_upvr = game:GetService("VRService")
local BackpackScript_upvr = require(Parent.Parent.BackpackScript)
local any_withEventStream_result1_upvr = require(Parent.Analytics).new():withEventStream(require(game:GetService("CorePackages").Workspace.Packages.Analytics).AnalyticsReporters.EventStream.new(game:GetService("RbxAnalyticsService")))
local ShowMenu_upvr = require(Parent.Actions.ShowMenu)
return function(arg1) -- Line 21, Named "OpenMenu"
	--[[ Upvalues[5]:
		[1]: GuiService_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: BackpackScript_upvr (readonly)
		[4]: any_withEventStream_result1_upvr (readonly)
		[5]: ShowMenu_upvr (readonly)
	]]
	return function(arg1_2) -- Line 22
		--[[ Upvalues[5]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: VRService_upvr (copied, readonly)
			[3]: BackpackScript_upvr (copied, readonly)
			[4]: any_withEventStream_result1_upvr (copied, readonly)
			[5]: ShowMenu_upvr (copied, readonly)
		]]
		if GuiService_upvr.MenuIsOpen then
			if VRService_upvr.VREnabled then
				GuiService_upvr:SetMenuIsOpen(false, "VRMenu")
			else
				return
			end
		end
		if BackpackScript_upvr.IsOpen then
			BackpackScript_upvr.OpenClose()
		end
		if BackpackScript_upvr.IsOpen then
		else
			any_withEventStream_result1_upvr:onMenuOpened()
			arg1_2:dispatch(ShowMenu_upvr())
		end
	end
end