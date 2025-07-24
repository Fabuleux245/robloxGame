-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:27
-- Luau version 6, Types version 3
-- Time taken: 0.012216 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local function _(arg1, arg2, arg3) -- Line 20
	return string.format("%f %f %f %f", arg1.Scale, arg1.Offset, arg2, arg3)
end
local function var4_upvr(arg1) -- Line 24
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local string_split_result1, string_split_result2, string_split_result3 = string.split(arg1, ' ')
	local var49
	for i, v in string_split_result1, string_split_result2, string_split_result3 do
		local tonumber_result1_3 = tonumber(v)
		if tonumber_result1_3 ~= nil then
			if i == 1 then
				var49 = tonumber_result1_3
			elseif i == 2 then
				local var51 = tonumber_result1_3
			elseif i == 3 then
				local var52 = tonumber_result1_3
			elseif i == 4 then
			end
		end
	end
	string_split_result2 = false
	local var53 = string_split_result2
	if var49 ~= math.huge then
		var53 = false
		if var51 ~= math.huge then
			var53 = false
			if var52 ~= math.huge then
				if tonumber_result1_3 == math.huge then
					var53 = false
				else
					var53 = true
				end
			end
		end
	end
	assert(var53, "Error! Not all parameters are decoded.")
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return UDim.new(var49, math.max(0, var51 + var52)), var52, tonumber_result1_3
end
local React_upvr = require(Parent.React)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local Cryo_upvr = require(Parent.Cryo)
local CursorType_upvr = require(script.Parent.CursorType)
local CursorComponent_upvr = require(script.Parent.CursorComponent)
local CoreGui_upvr = game:GetService("CoreGui")
local GuiService_upvr = game:GetService("GuiService")
local CursorContext_upvr = require(script.Parent.CursorContext)
return function(arg1) -- Line 53
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: CursorType_upvr (readonly)
		[6]: var4_upvr (readonly)
		[7]: CursorComponent_upvr (readonly)
		[8]: CoreGui_upvr (readonly)
		[9]: GuiService_upvr (readonly)
		[10]: CursorContext_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_createRef_result1_upvr = React_upvr.createRef()
	local any_useState_result1_upvr_2, any_useState_result2_upvr_3 = React_upvr.useState(nil)
	local any_useRefCache_result1_upvr = RoactGamepad_upvr.useRefCache()
	local SelectionCursor_upvr = useStyle_upvr().Tokens.Component.SelectionCursor
	React_upvr.useEffect(function() -- Line 142
		--[[ Upvalues[4]:
			[1]: any_createRef_result1_upvr (readonly)
			[2]: CoreGui_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
		]]
		if any_createRef_result1_upvr.current == nil or not any_createRef_result1_upvr.current:IsDescendantOf(game) then return end
		local any_IsDescendantOf_result1_upvr = any_createRef_result1_upvr.current:IsDescendantOf(CoreGui_upvr)
		local function setUpSelectionImageObjectConnection_upvr() -- Line 149, Named "setUpSelectionImageObjectConnection"
			--[[ Upvalues[3]:
				[1]: any_IsDescendantOf_result1_upvr (readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: any_useState_result2_upvr_3 (copied, readonly)
			]]
			if any_IsDescendantOf_result1_upvr then
				return GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 154
					--[[ Upvalues[2]:
						[1]: GuiService_upvr (copied, readonly)
						[2]: any_useState_result2_upvr_3 (copied, readonly)
					]]
					if GuiService_upvr.SelectedCoreObject == nil then
						any_useState_result2_upvr_3(nil)
					else
						any_useState_result2_upvr_3(GuiService_upvr.SelectedCoreObject.SelectionImageObject)
					end
				end)
			end
			return GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(function() -- Line 162
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: any_useState_result2_upvr_3 (copied, readonly)
				]]
				if GuiService_upvr.SelectedObject == nil then
					any_useState_result2_upvr_3(nil)
				else
					any_useState_result2_upvr_3(GuiService_upvr.SelectedObject.SelectionImageObject)
				end
			end)
		end
		local setUpSelectionImageObjectConnection_result1_upvw = setUpSelectionImageObjectConnection_upvr()
		local any_Connect_result1_upvr = any_createRef_result1_upvr.current.AncestryChanged:Connect(function() -- Line 173
			--[[ Upvalues[2]:
				[1]: setUpSelectionImageObjectConnection_result1_upvw (read and write)
				[2]: setUpSelectionImageObjectConnection_upvr (readonly)
			]]
			setUpSelectionImageObjectConnection_result1_upvw:Disconnect()
			setUpSelectionImageObjectConnection_result1_upvw = setUpSelectionImageObjectConnection_upvr()
		end)
		return function() -- Line 183
			--[[ Upvalues[2]:
				[1]: setUpSelectionImageObjectConnection_result1_upvw (read and write)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			setUpSelectionImageObjectConnection_result1_upvw:Disconnect()
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return React_upvr.createElement(CursorContext_upvr.Provider, {
		value = {
			getCursor = function(arg1_2, arg2, arg3) -- Line 61
				--[[ Upvalues[5]:
					[1]: SelectionCursor_upvr (readonly)
					[2]: any_useState_result1_upvr (readonly)
					[3]: any_useState_result2_upvr (readonly)
					[4]: Cryo_upvr (copied, readonly)
					[5]: any_useRefCache_result1_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var74
				if arg1_2 ~= nil then
				end
				var74 = 0
				local var75
				if arg3 ~= nil then
					if 0 >= arg3 then
						var75 = false
					else
						var75 = true
					end
					assert(var75, "Error! borderWidth should be larger than 0.")
					var74 = arg3
				else
					var74 = SelectionCursor_upvr.BorderWidth
				end
				local var76 = 0
				if arg2 ~= nil then
					var76 = arg2 - var74
				else
					var75 = SelectionCursor_upvr.Offset
					var76 = var75 - var74
				end
				local var77 = arg1_2
				local formatted = string.format("%f %f %f %f", var77.Scale, var77.Offset, var76, var74)
				if any_useState_result1_upvr[formatted] == nil then
					any_useState_result2_upvr(Cryo_upvr.Dictionary.join(any_useState_result1_upvr, {
						[formatted] = true;
					}))
				end
				return any_useRefCache_result1_upvr[formatted]
			end;
			getCursorByType = function(arg1_3) -- Line 94
				--[[ Upvalues[5]:
					[1]: CursorType_upvr (copied, readonly)
					[2]: any_useState_result1_upvr_3 (readonly)
					[3]: any_useState_result2_upvr_2 (readonly)
					[4]: Cryo_upvr (copied, readonly)
					[5]: any_useRefCache_result1_upvr (readonly)
				]]
				assert(CursorType_upvr.isEnumValue(arg1_3), "Error! expected a CursorType enum, got %s":format(tostring(arg1_3)))
				if any_useState_result1_upvr_3[arg1_3] == nil then
					any_useState_result2_upvr_2(Cryo_upvr.Dictionary.join(any_useState_result1_upvr_3, {
						[arg1_3] = true;
					}))
				end
				return any_useRefCache_result1_upvr[arg1_3]
			end;
		};
	}, Cryo_upvr.Dictionary.join({
		InvisibleContainer = React_upvr.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 0);
			Visible = false;
			ref = any_createRef_result1_upvr;
		}, (function() -- Line 109
			--[[ Upvalues[7]:
				[1]: any_useState_result1_upvr (readonly)
				[2]: any_useRefCache_result1_upvr (readonly)
				[3]: any_useState_result1_upvr_2 (readonly)
				[4]: var4_upvr (copied, readonly)
				[5]: React_upvr (copied, readonly)
				[6]: CursorComponent_upvr (copied, readonly)
				[7]: any_useState_result1_upvr_3 (readonly)
			]]
			local module_2 = {}
			for i_2, _ in pairs(any_useState_result1_upvr) do
				local var117 = false
				if any_useRefCache_result1_upvr[i_2] ~= nil then
					var117 = false
					if any_useState_result1_upvr_2 ~= nil then
						if any_useRefCache_result1_upvr[i_2].current ~= any_useState_result1_upvr_2 then
							var117 = false
						else
							var117 = true
						end
					end
				end
				local var4_upvr_result1_2, var4_upvr_result2, var4_upvr_result3 = var4_upvr(i_2)
				module_2[i_2] = React_upvr.createElement(CursorComponent_upvr, {
					ref = any_useRefCache_result1_upvr[i_2];
					isVisible = var117;
					cornerRadius = var4_upvr_result1_2;
					offset = var4_upvr_result2;
					borderWidth = var4_upvr_result3;
				})
			end
			for i_3, _ in pairs(any_useState_result1_upvr_3) do
				var4_upvr_result1_2 = false
				local var125 = var4_upvr_result1_2
				if any_useRefCache_result1_upvr[i_3] ~= nil then
					var125 = false
					if any_useState_result1_upvr_2 ~= nil then
						if any_useRefCache_result1_upvr[i_3].current ~= any_useState_result1_upvr_2 then
							var125 = false
						else
							var125 = true
						end
					end
				end
				module_2[i_3] = React_upvr.createElement(i_3.rawValue(), {
					ref = any_useRefCache_result1_upvr[i_3];
					isVisible = var125;
				})
			end
			return module_2
		end)());
	}, arg1.children))
end