-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:08
-- Luau version 6, Types version 3
-- Time taken: 0.007797 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local CoreGui_upvr = game:GetService("CoreGui")
local function getGuiObjectIsObscuredAtPosition_upvr(arg1, arg2, arg3) -- Line 24, Named "getGuiObjectIsObscuredAtPosition"
	--[[ Upvalues[1]:
		[1]: CoreGui_upvr (readonly)
	]]
	for _, v in CoreGui_upvr:GetGuiObjectsAtPosition(arg2, arg3), nil do
		if not v:IsA("GuiObject") then
		else
			if v == arg1 then
				return false
			end
			if v.Visible ~= false then
				if 0.95 < v.BackgroundTransparency then
				elseif v:IsDescendantOf(arg1) then
				else
					return true
				end
			end
		end
	end
	return false
end
local function getGuiObjectIsObscured_upvr(arg1) -- Line 42, Named "getGuiObjectIsObscured"
	--[[ Upvalues[1]:
		[1]: getGuiObjectIsObscuredAtPosition_upvr (readonly)
	]]
	local AbsolutePosition = arg1.AbsolutePosition
	local AbsoluteSize_3 = arg1.AbsoluteSize
	local var37 = AbsolutePosition + AbsoluteSize_3 * 0.5
	local var38 = AbsolutePosition + AbsoluteSize_3
	local var39 = AbsolutePosition + Vector2.new(AbsoluteSize_3.X, 0)
	local var40 = AbsolutePosition + Vector2.new(0, AbsoluteSize_3.Y)
	local var41 = 1
	local class_UICorner_2 = arg1:FindFirstChildOfClass("UICorner")
	if class_UICorner_2 then
		if class_UICorner_2:IsA("UICorner") then
			local Offset_3 = class_UICorner_2.CornerRadius.Offset
			if 0 < Offset_3 then
				var41 = math.ceil(Offset_3 * 0.3) + 1
			end
		end
	end
	local getGuiObjectIsObscuredAtPosition_result1_2 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var37.X, var37.Y)
	if not getGuiObjectIsObscuredAtPosition_result1_2 then
		getGuiObjectIsObscuredAtPosition_result1_2 = getGuiObjectIsObscuredAtPosition_upvr(arg1, AbsolutePosition.X + var41, AbsolutePosition.Y + var41)
		if not getGuiObjectIsObscuredAtPosition_result1_2 then
			getGuiObjectIsObscuredAtPosition_result1_2 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var40.X + var41, var40.Y - var41)
			if not getGuiObjectIsObscuredAtPosition_result1_2 then
				getGuiObjectIsObscuredAtPosition_result1_2 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var39.X - var41, var39.Y + var41)
				if not getGuiObjectIsObscuredAtPosition_result1_2 then
					getGuiObjectIsObscuredAtPosition_result1_2 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var38.X - var41, var38.Y - var41)
				end
			end
		end
	end
	return getGuiObjectIsObscuredAtPosition_result1_2
end
local useChatIsVisible_upvr = require(script.Parent.useChatIsVisible)
local React_upvr = require(Parent.React)
local setTimeout_upvr = require(Parent.LuauPolyfill).setTimeout
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChat.GuiVisibleBatchUpdateIntervalMs", 1000)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 82, Named "useIsGuiInChatVisible"
	--[[ Upvalues[6]:
		[1]: useChatIsVisible_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: getGuiObjectIsObscured_upvr (readonly)
		[4]: setTimeout_upvr (readonly)
		[5]: game_DefineFastInt_result1_upvr (readonly)
		[6]: Cryo_upvr (readonly)
	]]
	local useChatIsVisible_upvr_result1_upvr = useChatIsVisible_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 92
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: getGuiObjectIsObscured_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: setTimeout_upvr (copied, readonly)
			[6]: game_DefineFastInt_result1_upvr (copied, readonly)
			[7]: useChatIsVisible_upvr_result1_upvr (readonly)
		]]
		local function _() -- Line 93, Named "updateIsGuiVisible"
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: getGuiObjectIsObscured_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			if arg1.current and arg1.current:IsA("GuiObject") then
				local IsNotOccluded_2 = arg1.current.IsNotOccluded
				if IsNotOccluded_2 then
					IsNotOccluded_2 = not getGuiObjectIsObscured_upvr(arg1.current)
				end
				any_useState_result2_upvr(IsNotOccluded_2)
			else
				any_useState_result2_upvr(false)
			end
		end
		local function onDescendantEvent(arg1_3) -- Line 112
			--[[ Upvalues[6]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: setTimeout_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: getGuiObjectIsObscured_upvr (copied, readonly)
				[5]: any_useState_result2_upvr (copied, readonly)
				[6]: game_DefineFastInt_result1_upvr (copied, readonly)
			]]
			if not arg1_3:IsA("GuiObject") then
			else
				if any_useRef_result1_upvr.current then return end
				any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 107
					--[[ Upvalues[4]:
						[1]: any_useRef_result1_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: getGuiObjectIsObscured_upvr (copied, readonly)
						[4]: any_useState_result2_upvr (copied, readonly)
					]]
					any_useRef_result1_upvr.current = nil
					if arg1.current and arg1.current:IsA("GuiObject") then
						local IsNotOccluded_4 = arg1.current.IsNotOccluded
						if IsNotOccluded_4 then
							IsNotOccluded_4 = not getGuiObjectIsObscured_upvr(arg1.current)
						end
						any_useState_result2_upvr(IsNotOccluded_4)
					else
						any_useState_result2_upvr(false)
					end
				end, game_DefineFastInt_result1_upvr)
			end
		end
		if any_useRef_result1_upvr.current then
		else
			any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 107
				--[[ Upvalues[4]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: getGuiObjectIsObscured_upvr (copied, readonly)
					[4]: any_useState_result2_upvr (copied, readonly)
				]]
				any_useRef_result1_upvr.current = nil
				if arg1.current and arg1.current:IsA("GuiObject") then
					local IsNotOccluded_3 = arg1.current.IsNotOccluded
					if IsNotOccluded_3 then
						IsNotOccluded_3 = not getGuiObjectIsObscured_upvr(arg1.current)
					end
					any_useState_result2_upvr(IsNotOccluded_3)
				else
					any_useState_result2_upvr(false)
				end
			end, game_DefineFastInt_result1_upvr)
		end
		local tbl_upvr_2 = {}
		if arg1.current and arg1.current:IsA("GuiObject") and useChatIsVisible_upvr_result1_upvr then
			table.insert(tbl_upvr_2, arg1.current:GetPropertyChangedSignal("IsNotOccluded"):Connect(function() -- Line 103, Named "queueUpdateIsGuiVisible"
				--[[ Upvalues[6]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: setTimeout_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: getGuiObjectIsObscured_upvr (copied, readonly)
					[5]: any_useState_result2_upvr (copied, readonly)
					[6]: game_DefineFastInt_result1_upvr (copied, readonly)
				]]
				if any_useRef_result1_upvr.current then
				else
					any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 107
						--[[ Upvalues[4]:
							[1]: any_useRef_result1_upvr (copied, readonly)
							[2]: arg1 (copied, readonly)
							[3]: getGuiObjectIsObscured_upvr (copied, readonly)
							[4]: any_useState_result2_upvr (copied, readonly)
						]]
						any_useRef_result1_upvr.current = nil
						if arg1.current and arg1.current:IsA("GuiObject") then
							local IsNotOccluded_5 = arg1.current.IsNotOccluded
							if IsNotOccluded_5 then
								IsNotOccluded_5 = not getGuiObjectIsObscured_upvr(arg1.current)
							end
							any_useState_result2_upvr(IsNotOccluded_5)
						else
							any_useState_result2_upvr(false)
						end
					end, game_DefineFastInt_result1_upvr)
				end
			end))
			local class_LayerCollector_2 = arg1.current:FindFirstAncestorWhichIsA("LayerCollector")
			if class_LayerCollector_2 then
				table.insert(tbl_upvr_2, class_LayerCollector_2.DescendantAdded:Connect(onDescendantEvent))
				table.insert(tbl_upvr_2, class_LayerCollector_2.DescendantRemoving:Connect(onDescendantEvent))
			end
		end
		return function() -- Line 133
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			for _, v_2 in tbl_upvr_2 do
				v_2:Disconnect()
			end
		end
	end, Cryo_upvr.List.join(arg2, {useChatIsVisible_upvr_result1_upvr}))
	return useChatIsVisible_upvr_result1_upvr and any_useState_result1
end