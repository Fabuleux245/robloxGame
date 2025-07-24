-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:05
-- Luau version 6, Types version 3
-- Time taken: 0.002595 seconds

local Parent = script.Parent.Parent.Parent
local Gui = Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local Components = Gui.Components
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function _(arg1) -- Line 34, Named "validateInput"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var6 = false
	else
		var6 = true
	end
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
	else
	end
	return var6 or true
end
local TimeFormat_upvr = require(Parent.TimeFormat)
local Value_upvr = Fusion_upvr.Value
local RunService_upvr = game:GetService("RunService")
local New_upvr = Fusion_upvr.New
local OnEvent_upvr = Fusion_upvr.OnEvent
local Children_upvr = Fusion_upvr.Children
local ForPairs_upvr = Fusion_upvr.ForPairs
local UserInputService_upvr = game:GetService("UserInputService")
local mouse_upvr = LocalPlayer_upvr:GetMouse()
local Cleanup_upvr = Fusion_upvr.Cleanup
local Ref_upvr = Fusion_upvr.Ref
local Observer_upvr = Fusion_upvr.Observer
local Computed_upvr = Fusion_upvr.Computed
local RBLXSerialize_upvr = require(Parent.Parent.Utils.RBLXSerialize)
local DonateRow_upvr = require(Components.Profile.DonateRow)
local ActionButton_upvr = require(Components.ActionButton)
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 41
	--[[ Upvalues[19]:
		[1]: TimeFormat_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: OnEvent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: ForPairs_upvr (readonly)
		[9]: Fusion_upvr (readonly)
		[10]: UserInputService_upvr (readonly)
		[11]: mouse_upvr (readonly)
		[12]: Cleanup_upvr (readonly)
		[13]: Ref_upvr (readonly)
		[14]: Observer_upvr (readonly)
		[15]: Computed_upvr (readonly)
		[16]: RBLXSerialize_upvr (readonly)
		[17]: DonateRow_upvr (readonly)
		[18]: ActionButton_upvr (readonly)
		[19]: Line_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 91 start (CF ANALYSIS FAILED)
	if arg1.FeedProps.Config.permissions ~= "read_only" then
	else
	end
	Font.fromEnum(Enum.Font.Arial).Bold = true
	if arg1.ParentId == nil then
		-- KONSTANTWARNING: GOTO [47] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 91 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 29. Error Block 98 start (CF ANALYSIS FAILED)
	if arg1.FeedProps.CurrentFeedType ~= "replies" then
		-- KONSTANTWARNING: GOTO [55] #35
	end
	-- KONSTANTERROR: [46] 29. Error Block 98 end (CF ANALYSIS FAILED)
end