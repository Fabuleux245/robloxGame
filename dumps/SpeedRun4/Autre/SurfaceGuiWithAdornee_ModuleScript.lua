-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:14
-- Luau version 6, Types version 3
-- Time taken: 0.002284 seconds

local Parent = script.Parent.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local any_createContext_result1_upvr = React_upvr.createContext(nil)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local shallowEqual_upvr = require(Parent.Shared).shallowEqual
return React_upvr.memo(function(arg1) -- Line 33, Named "SurfaceGuiWithAdornee"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_createContext_result1_upvr (readonly)
		[3]: ReactRoblox_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local surfaceGuiProps = arg1.surfaceGuiProps
	if not (arg1.detached or false) then
		if React_upvr.useContext(any_createContext_result1_upvr) ~= nil then
		else
		end
	end
	local tbl = {
		Name = `{arg1.name or "Unnamed"}_SurfaceGui`;
		Adornee = React_upvr.useRef(nil);
		Active = true;
		Enabled = surfaceGuiProps.Enabled;
		CanvasSize = surfaceGuiProps.CanvasSize;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AlwaysOnTop = true;
		LightInfluence = 0;
		Shape = surfaceGuiProps.Shape;
		HorizontalCurvature = surfaceGuiProps.HorizontalCurvature;
		ZOffset = surfaceGuiProps.ZOffset;
	}
	if arg1.detached then
		-- KONSTANTWARNING: GOTO [100] #69
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [99] 68. Error Block 40 start (CF ANALYSIS FAILED)
	;({}).value = React_upvr.useRef(nil)
	if surfaceGuiProps.Parent ~= nil then
		-- KONSTANTWARNING: GOTO [116] #80
	end
	-- KONSTANTERROR: [99] 68. Error Block 40 end (CF ANALYSIS FAILED)
end, function(arg1, arg2) -- Line 102
	--[[ Upvalues[1]:
		[1]: shallowEqual_upvr (readonly)
	]]
	local var12 = false
	if arg1.name == arg2.name then
		var12 = false
		if arg1.detached == arg2.detached then
			var12 = shallowEqual_upvr(arg1.adorneeProps, arg2.adorneeProps)
			if var12 then
				var12 = shallowEqual_upvr(arg1.surfaceGuiProps, arg2.surfaceGuiProps)
				if var12 then
					if arg1.children ~= arg2.children then
						var12 = false
					else
						var12 = true
					end
				end
			end
		end
	end
	return var12
end)