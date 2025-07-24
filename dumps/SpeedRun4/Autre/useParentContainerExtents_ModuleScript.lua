-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:35
-- Luau version 6, Types version 3
-- Time taken: 0.003806 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React = require(Parent.React)
local Responsive_upvr = require(Parent.Responsive)
local useContext_upvr = React.useContext
local ParentContainerContext_upvr = require(AppChat.Contexts.ParentContainer.ParentContainerContext)
local useLayerCollector_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local getFFlagAppChatInExperienceTabBarAdjustment_upvr = require(AppChat.Flags.getFFlagAppChatInExperienceTabBarAdjustment)
local useOrientation_upvr = Responsive_upvr.useOrientation
local useBinding_upvr = React.useBinding
local useEffect_upvr = React.useEffect
local GuiService_upvr = game:GetService("GuiService")
return function() -- Line 22, Named "useParentContainerExtents"
	--[[ Upvalues[9]:
		[1]: useContext_upvr (readonly)
		[2]: ParentContainerContext_upvr (readonly)
		[3]: useLayerCollector_upvr (readonly)
		[4]: getFFlagAppChatInExperienceTabBarAdjustment_upvr (readonly)
		[5]: useOrientation_upvr (readonly)
		[6]: useBinding_upvr (readonly)
		[7]: Responsive_upvr (readonly)
		[8]: useEffect_upvr (readonly)
		[9]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
	local any_getParentContainer_result1_upvr = useContext_upvr(ParentContainerContext_upvr).getParentContainer()
	local var7_result1_upvr = useLayerCollector_upvr()
	local var15
	if not getFFlagAppChatInExperienceTabBarAdjustment_upvr() then
	else
	end
	if any_getParentContainer_result1_upvr then
		-- KONSTANTWARNING: GOTO [22] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 19. Error Block 34 start (CF ANALYSIS FAILED)
	local useBinding_upvr_result1, useBinding_upvr_result2_upvr = useBinding_upvr(Vector2.zero)
	if any_getParentContainer_result1_upvr then
		var15 = any_getParentContainer_result1_upvr.AbsolutePosition
	else
		var15 = Vector2.zero
	end
	local useBinding_upvr_result1_2, useBinding_upvr_result2_upvr_2 = useBinding_upvr(var15)
	if not getFFlagAppChatInExperienceTabBarAdjustment_upvr() then
		if nil ~= Responsive_upvr.Keys.Landscape then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	else
	end
	local var22_upvr
	useEffect_upvr(function() -- Line 37
		--[[ Upvalues[7]:
			[1]: any_getParentContainer_result1_upvr (readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: getFFlagAppChatInExperienceTabBarAdjustment_upvr (copied, readonly)
			[4]: var22_upvr (readonly)
			[5]: GuiService_upvr (copied, readonly)
			[6]: useBinding_upvr_result2_upvr (readonly)
			[7]: useBinding_upvr_result2_upvr_2 (readonly)
		]]
		if any_getParentContainer_result1_upvr then
			local var23_upvw
			local function _(arg1, arg2, arg3) -- Line 41
				return Vector2.new(math.clamp(arg1.X, arg2.X, arg3.X), math.clamp(arg1.Y, arg2.Y, arg3.Y))
			end
			local function var25() -- Line 45
				--[[ Upvalues[7]:
					[1]: any_getParentContainer_result1_upvr (copied, readonly)
					[2]: var7_result1_upvr (copied, readonly)
					[3]: getFFlagAppChatInExperienceTabBarAdjustment_upvr (copied, readonly)
					[4]: var22_upvr (copied, readonly)
					[5]: GuiService_upvr (copied, readonly)
					[6]: useBinding_upvr_result2_upvr (copied, readonly)
					[7]: useBinding_upvr_result2_upvr_2 (copied, readonly)
				]]
				local var26
				if not getFFlagAppChatInExperienceTabBarAdjustment_upvr() and var22_upvr then
					var26 = Vector2.new(0, GuiService_upvr:GetSafeZoneOffsets().bottom)
				end
				local var27 = var7_result1_upvr.absoluteSize - var26
				local AbsolutePosition = any_getParentContainer_result1_upvr.AbsolutePosition
				local zero = Vector2.zero
				local var30 = var27
				local vector2 = Vector2.new(math.clamp(AbsolutePosition.X, zero.X, var30.X), math.clamp(AbsolutePosition.Y, zero.Y, var30.Y))
				local AbsoluteSize = any_getParentContainer_result1_upvr.AbsoluteSize
				local zero_2 = Vector2.zero
				local var34 = var27 - vector2
				useBinding_upvr_result2_upvr(Vector2.new(math.clamp(AbsoluteSize.X, zero_2.X, var34.X), math.clamp(AbsoluteSize.Y, zero_2.Y, var34.Y)))
				useBinding_upvr_result2_upvr_2(vector2)
			end
			if not getFFlagAppChatInExperienceTabBarAdjustment_upvr() then
				var23_upvw = GuiService_upvr.SafeZoneOffsetsChanged:Connect(var25)
			end
			var25()
			local any_Connect_result1_upvw_2 = any_getParentContainer_result1_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(var25)
			local any_Connect_result1_upvw = any_getParentContainer_result1_upvr:GetPropertyChangedSignal("AbsolutePosition"):Connect(var25)
			return function() -- Line 85
				--[[ Upvalues[4]:
					[1]: any_Connect_result1_upvw_2 (read and write)
					[2]: any_Connect_result1_upvw (read and write)
					[3]: getFFlagAppChatInExperienceTabBarAdjustment_upvr (copied, readonly)
					[4]: var23_upvw (read and write)
				]]
				if any_Connect_result1_upvw_2 and any_Connect_result1_upvw_2.Connected then
					any_Connect_result1_upvw_2:Disconnect()
				end
				if any_Connect_result1_upvw and any_Connect_result1_upvw.Connected then
					any_Connect_result1_upvw:Disconnect()
				end
				if not getFFlagAppChatInExperienceTabBarAdjustment_upvr() and var23_upvw and var23_upvw.Connected then
					var23_upvw:Disconnect()
				end
			end
		end
		return function() -- Line 100
		end
	end, {any_getParentContainer_result1_upvr, useBinding_upvr_result2_upvr, useBinding_upvr_result2_upvr_2, var7_result1_upvr.absoluteSize, var22_upvr})
	do
		return useBinding_upvr_result1, useBinding_upvr_result1_2
	end
	-- KONSTANTERROR: [20] 19. Error Block 34 end (CF ANALYSIS FAILED)
end