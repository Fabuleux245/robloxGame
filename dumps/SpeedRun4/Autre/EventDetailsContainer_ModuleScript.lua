-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:38
-- Luau version 6, Types version 3
-- Time taken: 0.004534 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local useTokens_upvr = require(VirtualEvents.Parent.Foundation).Hooks.useTokens
local useScreenSize_upvr = require(VirtualEvents.Parent.RobloxAppHooks).useScreenSize
local GuiService_upvr = game:GetService("GuiService")
local React_upvr = require(VirtualEvents.Parent.React)
local FFlagEnableEventDetailsNewModalImprovements_upvr = require(VirtualEvents.Flags.FFlagEnableEventDetailsNewModalImprovements)
local constants_upvr = require(VirtualEvents.constants)
local EventDetailsBody_upvr = require(VirtualEvents.Components.EventDetailsBody)
local EventActionBar_upvr = require(VirtualEvents.Components.EventActionBar)
return function(arg1) -- Line 35, Named "EventDetailsContainer"
	--[[ Upvalues[8]:
		[1]: useTokens_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: FFlagEnableEventDetailsNewModalImprovements_upvr (readonly)
		[6]: constants_upvr (readonly)
		[7]: EventDetailsBody_upvr (readonly)
		[8]: EventActionBar_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	local var2_result1 = useTokens_upvr()
	local var3_result1_upvr = useScreenSize_upvr()
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(0.99)
	local var16
	if FFlagEnableEventDetailsNewModalImprovements_upvr then
		local any_useRef_result1_upvr = React_upvr.useRef(0)
		local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 48
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: any_useState_result2_upvr (readonly)
			]]
			if not any_useRef_result1_upvr.current or not arg1.bottomHeight then
			elseif 0 < arg1.bottomHeight and arg1.bottomHeight < any_useRef_result1_upvr.current then
				any_useState_result2_upvr(1 - arg1.bottomHeight / any_useRef_result1_upvr.current)
			end
		end, {arg1.bottomHeight})
		var16 = React_upvr.useCallback(function(arg1_2) -- Line 57
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useCallback_result1_upvr (readonly)
			]]
			if any_useRef_result1_upvr.current and any_useRef_result1_upvr.current ~= arg1_2.AbsoluteSize.Y then
				any_useRef_result1_upvr.current = arg1_2.AbsoluteSize.Y
				any_useCallback_result1_upvr()
			end
		end, {any_useCallback_result1_upvr})
		React_upvr.useEffect(function() -- Line 64
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr (readonly)
			]]
			any_useCallback_result1_upvr()
		end, {arg1.bottomHeight, any_useCallback_result1_upvr})
	else
		any_useCallback_result1_upvr = React_upvr
		any_useRef_result1_upvr = any_useCallback_result1_upvr.useCallback
		local any_GetSafeZoneOffsets_result1_upvr = GuiService_upvr:GetSafeZoneOffsets()
		function any_useCallback_result1_upvr(arg1_3) -- Line 68
			--[[ Upvalues[4]:
				[1]: var3_result1_upvr (readonly)
				[2]: constants_upvr (copied, readonly)
				[3]: any_GetSafeZoneOffsets_result1_upvr (readonly)
				[4]: any_useState_result2_upvr (readonly)
			]]
			local var27 = var3_result1_upvr.Y - any_GetSafeZoneOffsets_result1_upvr.top - math.min(var3_result1_upvr.X, constants_upvr.CONTAINER_WIDTH) * constants_upvr.HORIZONTAL_ASPECT_RATIO - any_GetSafeZoneOffsets_result1_upvr.bottom + 40
			local Y = arg1_3.AbsoluteSize.Y
			if 0 < var27 and var27 < Y then
				any_useState_result2_upvr(1 - var27 / Y)
			end
		end
		any_useRef_result1_upvr = any_useRef_result1_upvr(any_useCallback_result1_upvr, {var3_result1_upvr})
		var16 = any_useRef_result1_upvr
	end
	any_useCallback_result1_upvr = React_upvr
	any_useRef_result1_upvr = any_useCallback_result1_upvr.createElement
	any_useCallback_result1_upvr = "TextButton"
	local tbl_2 = {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Text = "";
		AutoButtonColor = false;
	}
	local Event = React_upvr.Event
	if FFlagEnableEventDetailsNewModalImprovements_upvr then
		function Event() -- Line 87
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(false)
		end
	else
		Event = nil
	end
	tbl_2[Event.TouchTap] = Event
	tbl_2[React_upvr.Event.Activated] = function() -- Line 91
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(false)
	end
	local tbl = {
		ZIndex = 1;
		Size = UDim2.new(1, 0, 1, 0);
	}
	if any_useState_result1 then
		-- KONSTANTWARNING: GOTO [162] #122
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 121. Error Block 41 start (CF ANALYSIS FAILED)
	tbl.BackgroundTransparency = 1
	tbl.BackgroundColor3 = var2_result1.Color.Extended.Black.Black_50.Color3
	tbl.BorderSizePixel = 0
	;({}).Scrim = React_upvr.createElement("Frame", tbl)
	local _ = {
		ZIndex = 2;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.new(0, 0, 1, 0);
		BackgroundTransparency = var2_result1.Color.Extended.White.White_100.Transparency;
		BackgroundColor3 = var2_result1.Color.Extended.White.White_100.Color3;
		BorderSizePixel = 0;
	}
	if FFlagEnableEventDetailsNewModalImprovements_upvr then
		-- KONSTANTWARNING: GOTO [257] #182
	end
	-- KONSTANTERROR: [161] 121. Error Block 41 end (CF ANALYSIS FAILED)
end