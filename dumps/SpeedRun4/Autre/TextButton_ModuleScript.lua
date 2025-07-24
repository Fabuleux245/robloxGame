-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:32
-- Luau version 6, Types version 3
-- Time taken: 0.001540 seconds

local Parent = script:FindFirstAncestor("SettingReactView").Parent
local Foundation = require(Parent.Foundation)
local Enums = Foundation.Enums
local React_upvr = require(Parent.React)
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Enums.ButtonVariant
local ButtonSize_upvr = Enums.ButtonSize
return function(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Button_upvr (readonly)
		[3]: ButtonVariant_upvr (readonly)
		[4]: ButtonSize_upvr (readonly)
	]]
	local var9
	if arg1.text and type(arg1.text) == "table" then
		local any_useState_result1, any_useState_result2 = React_upvr.useState(arg1.text:get())
		var9 = any_useState_result1
		arg1.text:connect(any_useState_result2)
	else
		var9 = arg1.text
	end
	return React_upvr.createElement(Button_upvr, {
		onActivated = React_upvr.useCallback(function() -- Line 30
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onActivated then
				arg1.onActivated:signal():fire()
			end
		end, {arg1.onActivated});
		text = var9;
		isDisabled = not arg1.onActivated;
		variant = ButtonVariant_upvr.Standard;
		size = ButtonSize_upvr.Medium;
	})
end