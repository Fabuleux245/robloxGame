-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:53
-- Luau version 6, Types version 3
-- Time taken: 0.004451 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("TabRowContainer")
local TextService_upvr = game:GetService("TextService")
local function initTabList_upvr(arg1) -- Line 19, Named "initTabList"
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local module = {}
	local var11 = 0
	local var12 = 0
	for i, _ in pairs(arg1) do
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(i, Constants_upvr.DefaultFontSize.TabBar, Constants_upvr.Font.TabBar, Vector2.new(0, 0))
		module[i] = any_GetTextSize_result1.X
		var11 += any_GetTextSize_result1.X
		var12 += 1
	end
	return module, var11, var12
end
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: initTabList_upvr (readonly)
	]]
	local initTabList_upvr_result1_2, initTabList_result2, initTabList_result3 = initTabList_upvr(arg1.props.tabList)
	arg1.state = {
		textWidths = initTabList_upvr_result1_2;
		totalTextLength = initTabList_result2;
		totalTabCount = initTabList_result3;
		currContainerWidth = 0;
	}
	function arg1.onTabButtonClicked(arg1_2) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		for i_2, v_2 in pairs(arg1.props.tabList) do
			if v_2.layoutOrder == arg1_2 then
				arg1.props.dispatchSetActiveTab(i_2, v_2.hasClientServer)
				return
			end
		end
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 55
	--[[ Upvalues[1]:
		[1]: initTabList_upvr (readonly)
	]]
	if arg2.tabList ~= arg1.props.tabList then
		local initTabList_upvr_result1, initTabList_result2_2, initTabList_result3_2 = initTabList_upvr(arg1.props.tabList)
		arg1:setState({
			textWidths = initTabList_upvr_result1;
			totalTextLength = initTabList_result2_2;
			totalTabCount = initTabList_result3_2;
		})
	end
end
local TabOverlapThreshold_upvr = Constants_upvr.TabRowFormatting.TabOverlapThreshold
local FullScreenDropDownButton_upvr = require(script.Parent.FullScreenDropDownButton)
local TabDropDownWidth_upvr = Constants_upvr.TabRowFormatting.TabDropDownWidth
local DropDown_upvr = require(script.Parent.DropDown)
local TabRowButton_upvr = require(script.Parent.TabRowButton)
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[7]:
		[1]: TabOverlapThreshold_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FullScreenDropDownButton_upvr (readonly)
		[5]: TabDropDownWidth_upvr (readonly)
		[6]: DropDown_upvr (readonly)
		[7]: TabRowButton_upvr (readonly)
	]]
	local tabList = arg1.props.tabList
	local windowWidth = arg1.props.windowWidth
	local frameHeight = arg1.props.frameHeight
	local textWidths = arg1.state.textWidths
	local totalTabCount = arg1.state.totalTabCount
	local tbl = {}
	local var50 = (windowWidth - arg1.state.totalTextLength) / totalTabCount
	local var51 = false
	local var52
	if var50 < var52 then
		var52 = 0
		if var52 >= windowWidth then
			var51 = false
		else
			var51 = true
		end
	end
	if arg1.props.formFactor ~= Constants_upvr.FormFactor.Small then
		var52 = false
	else
		var52 = true
	end
	if tabList then
		if var51 or var52 then
			local layoutOrder = tabList[arg1.props.currTabIndex].layoutOrder
			for i_3, v_3 in pairs(tabList) do
				({})[v_3.layoutOrder] = i_3
				local var58
			end
			if var52 then
				local module_3 = {}
				i_3 = UDim2.new
				v_3 = 0
				i_3 = i_3(v_3, TabDropDownWidth_upvr, 0, frameHeight)
				module_3.buttonSize = i_3
				module_3.dropDownList = var58
				module_3.selectedIndex = layoutOrder
				i_3 = arg1.onTabButtonClicked
				module_3.onSelection = i_3
				module_3.layoutOrder = arg1.props.layoutOrder
				return Roact_upvr.createElement(FullScreenDropDownButton_upvr, module_3)
			end
			if var51 then
				local module_2 = {}
				i_3 = UDim2.new
				v_3 = 0
				i_3 = i_3(v_3, TabDropDownWidth_upvr, 0, frameHeight)
				module_2.buttonSize = i_3
				module_2.dropDownList = var58
				module_2.selectedIndex = layoutOrder
				i_3 = arg1.onTabButtonClicked
				module_2.onSelection = i_3
				do
					return Roact_upvr.createElement(DropDown_upvr, module_2)
				end
				-- KONSTANTWARNING: GOTO [176] #119
			end
		else
			for i_4, v_4 in pairs(tabList) do
				i_3 = textWidths[i_4]
				local var64
				if i_3 then
					v_3 = Roact_upvr
					i_3 = v_3.createElement
					v_3 = TabRowButton_upvr
					local tbl_2 = {}
					var64 = v_4.layoutOrder
					tbl_2.index = var64
					tbl_2.name = i_4
					tbl_2.padding = var50
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var64 = TabDropDownWidth_upvr
						return var64
					end
					if not var51 or not INLINED() then
						var64 = textWidths[i_4]
					end
					tbl_2.textWidth = var64
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if i_4 ~= arg1.props.currTabIndex then
						var64 = false
					else
						var64 = true
					end
					tbl_2.isSelected = var64
					var64 = v_4.layoutOrder
					tbl_2.layoutOrder = var64
					var64 = arg1.onTabButtonClicked
					tbl_2.onTabButtonClicked = var64
					i_3 = i_3(v_3, tbl_2)
					tbl[i_4] = i_3
				end
			end
		end
		local tbl_3 = {}
		i_4 = Enum.HorizontalAlignment.Left
		tbl_3.HorizontalAlignment = i_4
		i_4 = Enum.SortOrder.LayoutOrder
		tbl_3.SortOrder = i_4
		i_4 = Enum.VerticalAlignment.Top
		tbl_3.VerticalAlignment = i_4
		i_4 = Enum.FillDirection.Horizontal
		tbl_3.FillDirection = i_4
		tbl.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_3)
	end
	local module_4 = {}
	i_4 = UDim2.new
	v_4 = 1
	i_4 = i_4(v_4, 0, 0, frameHeight)
	module_4.Size = i_4
	i_4 = UDim2.new
	v_4 = 0
	i_4 = i_4(v_4, var50 % 1 * totalTabCount / 2, 0, 0)
	module_4.Position = i_4
	i_4 = 1
	module_4.Transparency = i_4
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_4.LayoutOrder = arg1.props.layoutOrder
	i_4 = tbl
	return Roact_upvr.createElement("Frame", module_4, i_4)
end
local SetActiveTab_upvr = require(script.Parent.Parent.Actions.SetActiveTab)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 146, Named "mapStateToProps"
	return {
		tabList = arg1.MainView.tabList;
		currTabIndex = arg1.MainView.currTabIndex;
	}
end, function(arg1) -- Line 153, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetActiveTab_upvr (readonly)
	]]
	return {
		dispatchSetActiveTab = function(arg1_3, arg2) -- Line 155, Named "dispatchSetActiveTab"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetActiveTab_upvr (copied, readonly)
			]]
			arg1(SetActiveTab_upvr(arg1_3, arg2))
		end;
	}
end)(any_extend_result1)