-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:48
-- Luau version 6, Types version 3
-- Time taken: 0.002678 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Constants_upvr = require(Modules.TopBar.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Container")
function any_extend_result1.init(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.frameRef = Roact_upvr.createRef()
	arg1.lastSavedSelectedCoreGui = nil
end
function any_extend_result1.didMount(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	arg1.selectedCoreObjectChangedSignal = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 32
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if arg1.props.visible and GuiService_upvr.SelectedCoreObject then
			arg1.lastSavedSelectedCoreGui = GuiService_upvr.SelectedCoreObject
		end
	end)
	if arg1.props.gamepadEnabled then
		GuiService_upvr:AddSelectionParent("InspectMenu", arg1.frameRef.current)
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 44
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local visible = arg1.props.visible
	local gamepadEnabled = arg1.props.gamepadEnabled
	if visible and gamepadEnabled and arg1.frameRef.current then
		GuiService_upvr:RemoveSelectionGroup("InspectMenu")
		GuiService_upvr:AddSelectionParent("InspectMenu", arg1.frameRef.current)
		if arg1.lastSavedSelectedCoreGui then
			GuiService_upvr.SelectedCoreObject = arg1.lastSavedSelectedCoreGui
			-- KONSTANTWARNING: GOTO [48] #34
		end
	elseif not gamepadEnabled and arg2.gamepadEnabled or not visible then
		GuiService_upvr:RemoveSelectionGroup("InspectMenu")
	end
	if visible and not arg2.visible then
		GuiService_upvr.SelectedCoreObject = arg1.lastSavedSelectedCoreGui
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	arg1.selectedCoreObjectChangedSignal:disconnect()
	GuiService_upvr:RemoveSelectionGroup("InspectMenu")
	GuiService_upvr.SelectedCoreObject = nil
end
local Theme_upvr = require(Modules.Settings.Theme)
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local ScreenSideOffset_upvr = Constants_upvr.ScreenSideOffset
local Constants_upvr_2 = require(Parent.Constants)
local Overlay_upvr = require(Parent.Components.Overlay)
local Colors_upvr = require(Parent.Colors)
local CloseButton_upvr = require(Parent.Components.CloseButton)
local InitialView_upvr = require(Parent.Components.InitialView)
local AssetDetails_upvr = require(Parent.Components.AssetDetails)
local NoInventoryNotice_upvr = require(Parent.Components.NoInventoryNotice)
local function render(arg1) -- Line 70
	--[[ Upvalues[13]:
		[1]: Theme_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: InspectAndBuyContext_upvr (readonly)
		[5]: ScreenSideOffset_upvr (readonly)
		[6]: Constants_upvr_2 (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: Overlay_upvr (readonly)
		[9]: Colors_upvr (readonly)
		[10]: CloseButton_upvr (readonly)
		[11]: InitialView_upvr (readonly)
		[12]: AssetDetails_upvr (readonly)
		[13]: NoInventoryNotice_upvr (readonly)
	]]
	local module = {}
	local view_upvr = arg1.props.view
	local any_UseInspectAndBuyPanel_result1_upvr = Theme_upvr.UseInspectAndBuyPanel()
	local TopBarHeight_upvr = Constants_upvr.TopBarHeight
	local visible_2_upvr = arg1.props.visible
	local localPlayerModel_upvr = arg1.props.localPlayerModel
	function module.render(arg1_2) -- Line 78
		--[[ Upvalues[17]:
			[1]: view_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: any_UseInspectAndBuyPanel_result1_upvr (readonly)
			[4]: ScreenSideOffset_upvr (copied, readonly)
			[5]: Theme_upvr (copied, readonly)
			[6]: TopBarHeight_upvr (readonly)
			[7]: visible_2_upvr (readonly)
			[8]: Constants_upvr_2 (copied, readonly)
			[9]: GuiService_upvr (copied, readonly)
			[10]: Overlay_upvr (copied, readonly)
			[11]: Colors_upvr (copied, readonly)
			[12]: arg1 (readonly)
			[13]: CloseButton_upvr (copied, readonly)
			[14]: InitialView_upvr (copied, readonly)
			[15]: AssetDetails_upvr (copied, readonly)
			[16]: localPlayerModel_upvr (readonly)
			[17]: NoInventoryNotice_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
		local var27
		if any_UseInspectAndBuyPanel_result1_upvr then
			var27 = ScreenSideOffset_upvr * -2
		else
			var27 = 0
		end
		if any_UseInspectAndBuyPanel_result1_upvr then
			-- KONSTANTWARNING: GOTO [27] #23
		end
		-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 22. Error Block 39 start (CF ANALYSIS FAILED)
		;({}).Size = UDim2.new(1, var27, 1, TopBarHeight_upvr)
		if any_UseInspectAndBuyPanel_result1_upvr then
			var27 = ScreenSideOffset_upvr
			-- KONSTANTWARNING: GOTO [38] #32
		end
		-- KONSTANTERROR: [26] 22. Error Block 39 end (CF ANALYSIS FAILED)
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module)
end
any_extend_result1.render = render
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 138
	return {
		view = arg1.view;
		visible = arg1.visible;
		gamepadEnabled = arg1.gamepadEnabled;
	}
end)(any_extend_result1)