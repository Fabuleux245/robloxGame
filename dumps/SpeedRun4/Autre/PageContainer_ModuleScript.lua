-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:43
-- Luau version 6, Types version 3
-- Time taken: 0.008314 seconds

local GuiService_upvr = game:GetService("GuiService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local Otter_upvr = InGameMenuDependencies.Otter
local t = InGameMenuDependencies.t
local Pages_upvr = require(script.Parent.Pages)
local tbl_2_upvr = {}
for i, v in pairs(Pages_upvr.pagesByKey) do
	tbl_2_upvr[i] = require(v.component)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("PageContainer")
any_extend_result1.validateProps = t.strictInterface({
	currentPage = t.string;
	visible = t.boolean;
	controllerBarHeight = t.number;
	controllerBarCount = t.number;
})
function any_extend_result1.init(arg1, arg2) -- Line 34
	--[[ Upvalues[4]:
		[1]: GuiService_upvr (readonly)
		[2]: Pages_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Otter_upvr (readonly)
	]]
	function arg1.onContainerRendered(arg1_2, arg2_2) -- Line 35
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if arg1_2 then
			local any_getSelectionParentNameFromKey_result1 = arg1.getSelectionParentNameFromKey(arg2_2)
			GuiService_upvr:RemoveSelectionGroup(any_getSelectionParentNameFromKey_result1)
			GuiService_upvr:AddSelectionParent(any_getSelectionParentNameFromKey_result1, arg1_2)
		end
	end
	function arg1.getSelectionParentNameFromKey(arg1_3) -- Line 43
		return arg1_3.."_IGMPageSelectionGroup"
	end
	local tbl_6 = {}
	local tbl_4_upvr = {}
	local tbl_3 = {}
	arg1.pagePositions = {}
	arg1.pageVisibilities = {}
	for i_2, _ in pairs(Pages_upvr.pagesByKey) do
		local var30
		if arg2.currentPage == i_2 then
			var30 = 1
		else
			var30 = 0
		end
		local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(var30)
		tbl_6[i_2] = any_createBinding_result1
		tbl_4_upvr[i_2] = any_createBinding_result2
		tbl_3[i_2] = var30
		arg1.pagePositions[i_2] = tbl_6[i_2]:map(function(arg1_4) -- Line 55
			return UDim2.new(arg1_4 - 1, 0, 0, 0)
		end)
		arg1.pageVisibilities[i_2] = tbl_6[i_2]:map(function(arg1_5) -- Line 60
			if arg1_5 == 0 or arg1_5 == 1.25 then
				return false
			end
			return true
		end)
	end
	arg1.pageMotor = Otter_upvr.createGroupMotor(tbl_3)
	arg1.pageMotor:onStep(function(arg1_6) -- Line 69
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (readonly)
		]]
		for i_3, v_3 in pairs(arg1_6) do
			tbl_4_upvr[i_3](v_3)
		end
	end)
end
local withLocalization_upvr = require(script.Parent.Parent.Localization.withLocalization)
local BlurredModalPortal_upvr = require(script.Parent.BlurredModalPortal)
local Constants_upvr = require(script.Parent.Parent.Resources.Constants)
function any_extend_result1.render(arg1) -- Line 76
	--[[ Upvalues[6]:
		[1]: Pages_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: BlurredModalPortal_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	local module_2 = {}
	local _, pairs_result2_2, pairs_result3 = pairs(Pages_upvr.pagesByKey)
	local var52
	for i_4_upvr, v_4_upvr in var52, pairs_result2_2, pairs_result3 do
		local var55_upvr = arg1.pageVisibilities[i_4_upvr]
		module_2[i_4_upvr] = withLocalization_upvr({
			title = v_4_upvr.title;
		})(function(arg1_7) -- Line 84
			--[[ Upvalues[7]:
				[1]: v_4_upvr (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: i_4_upvr (readonly)
				[5]: var55_upvr (readonly)
				[6]: tbl_2_upvr (copied, readonly)
				[7]: BlurredModalPortal_upvr (copied, readonly)
			]]
			local var56
			if not v_4_upvr.isModal then
				local module_3 = {}
				var56 = UDim2.new(1, 0, 1, 0)
				module_3.Size = var56
				var56 = arg1.pagePositions[i_4_upvr]
				module_3.Position = var56
				var56 = 1
				module_3.BackgroundTransparency = var56
				var56 = v_4_upvr.navigationDepth
				module_3.ZIndex = var56
				var56 = var55_upvr
				module_3.Visible = var56
				var56 = Roact_upvr.Ref
				module_3[var56] = function(arg1_8) -- Line 92
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: i_4_upvr (copied, readonly)
					]]
					arg1.onContainerRendered(arg1_8, i_4_upvr)
				end
				var56 = {}
				local tbl = {}
				local title = v_4_upvr.title
				if title then
					title = arg1_7.title
				end
				tbl.pageTitle = title
				var56.Page = Roact_upvr.createElement(tbl_2_upvr[i_4_upvr], tbl)
				return Roact_upvr.createElement("Frame", module_3, var56)
			end
			local module_4 = {}
			if arg1.props.currentPage ~= i_4_upvr then
				var56 = false
			else
				var56 = true
			end
			module_4.Enabled = var56
			var56 = {}
			var56.ModalPageContent = Roact_upvr.createElement(tbl_2_upvr[i_4_upvr], {
				pageTitle = arg1_7.title;
			})
			return Roact_upvr.createElement(BlurredModalPortal_upvr, module_4, var56)
		end)
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var52 = -1 * Constants_upvr.ControllerBarHeight
		return var52
	end
	if 0 >= arg1.props.controllerBarCount or not INLINED() then
		var52 = nil
	end
	local module = {}
	var55_upvr = 0
	module.Size = UDim2.new(var55_upvr, 400, 1, var52)
	var55_upvr = 0
	module.Position = UDim2.new(var55_upvr, 64, 0, 0)
	module.BackgroundTransparency = 1
	var55_upvr = arg1.props
	module.Visible = var55_upvr.visible
	module.ClipsDescendants = true
	return Roact_upvr.createElement("Frame", module, module_2)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 122
	--[[ Upvalues[2]:
		[1]: Pages_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local currentPage_2 = arg2.currentPage
	local currentPage = arg1.props.currentPage
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 5. Error Block 31 start (CF ANALYSIS FAILED)
	local isModal = Pages_upvr.pagesByKey[currentPage].isModal
	if isModal or Pages_upvr.pagesByKey[currentPage_2].isModal then return end
	if Pages_upvr.pagesByKey[currentPage_2].navigationDepth < Pages_upvr.pagesByKey[currentPage].navigationDepth then
		if not isModal then
			arg1.pageMotor:setGoal({
				[currentPage_2] = Otter_upvr.spring(1.25, {
					frequency = 2.5;
				});
			})
			-- KONSTANTWARNING: GOTO [118] #82
		end
	elseif Pages_upvr.pagesByKey[currentPage_2].navigationDepth == Pages_upvr.pagesByKey[currentPage].navigationDepth then
		arg1.pageMotor:setGoal({
			[currentPage_2] = Otter_upvr.spring(0, {
				frequency = 2.5;
			});
		})
	else
		local tbl_5 = {}
		local var72 = currentPage_2
		while var72 ~= nil and var72 ~= currentPage do
			tbl_5[var72] = Otter_upvr.spring(0, {
				frequency = 3.5;
			})
		end
		arg1.pageMotor:setGoal(tbl_5)
	end
	-- KONSTANTERROR: [8] 5. Error Block 31 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 165
	--[[ Upvalues[2]:
		[1]: Pages_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	for i_5, v_5 in pairs(Pages_upvr.pagesByKey) do
		if not v_5.isModal then
			GuiService_upvr:RemoveSelectionGroup(arg1.getSelectionParentNameFromKey(i_5))
		end
	end
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 174
	return {
		currentPage = arg1.menuPage;
		visible = arg1.isMenuOpen;
		controllerBarHeight = arg1.controllerBarHeight;
		controllerBarCount = arg1.controllerBarCount;
	}
end)(any_extend_result1)