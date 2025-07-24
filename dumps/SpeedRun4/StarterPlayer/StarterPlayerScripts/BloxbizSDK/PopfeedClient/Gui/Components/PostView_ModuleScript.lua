-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:12
-- Luau version 6, Types version 3
-- Time taken: 0.002747 seconds

local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Parent = script.Parent.Parent.Parent
local Gui = Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local Components = Gui.Components
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local tbl_upvr = {}
local function _(arg1) -- Line 35, Named "getGameName"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
	]]
	local var8 = tbl_upvr[arg1]
	if not var8 then
		tbl_upvr[arg1] = MarketplaceService_upvr:GetProductInfo(arg1).Name
		var8 = tbl_upvr[arg1]
	end
	return var8 or "Unknown"
end
local function _(arg1) -- Line 45, Named "validateInput"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var9 = false
	else
		var9 = true
	end
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
	else
	end
	return var9 or true
end
local TimeFormat_upvr = require(Parent.TimeFormat)
local Value_upvr = Fusion_upvr.Value
local New_upvr = Fusion_upvr.New
local OnEvent_upvr = Fusion_upvr.OnEvent
local Children_upvr = Fusion_upvr.Children
local ForPairs_upvr = Fusion_upvr.ForPairs
local UserInputService_upvr = game:GetService("UserInputService")
local mouse_upvr = LocalPlayer_upvr:GetMouse()
local RunService_upvr = game:GetService("RunService")
local Cleanup_upvr = Fusion_upvr.Cleanup
local Ref_upvr = Fusion_upvr.Ref
local RBLXSerialize_upvr = require(Parent.Parent.Utils.RBLXSerialize)
local Computed_upvr = Fusion_upvr.Computed
local DonateRow_upvr = require(Components.Profile.DonateRow)
local ActionButton_upvr = require(Components.ActionButton)
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 52
	--[[ Upvalues[20]:
		[1]: TimeFormat_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: OnEvent_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: ForPairs_upvr (readonly)
		[8]: Fusion_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: mouse_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: Cleanup_upvr (readonly)
		[13]: Ref_upvr (readonly)
		[14]: RBLXSerialize_upvr (readonly)
		[15]: Computed_upvr (readonly)
		[16]: DonateRow_upvr (readonly)
		[17]: tbl_upvr (readonly)
		[18]: MarketplaceService_upvr (readonly)
		[19]: ActionButton_upvr (readonly)
		[20]: Line_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	if arg1.FeedProps.Config.permissions ~= "read_only" then
	else
	end
	Font.fromEnum(Enum.Font.Arial).Bold = true
	local _ = arg1.Profile
	if arg1.OwnLike == 1 then
		-- KONSTANTWARNING: GOTO [56] #37
	end
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 36. Error Block 68 start (CF ANALYSIS FAILED)
	if false then
		-- KONSTANTWARNING: GOTO [61] #42
	end
	-- KONSTANTERROR: [55] 36. Error Block 68 end (CF ANALYSIS FAILED)
end