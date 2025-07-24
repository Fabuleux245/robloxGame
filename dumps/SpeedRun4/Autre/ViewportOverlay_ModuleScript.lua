-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:04
-- Luau version 6, Types version 3
-- Time taken: 0.002997 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	currentPage = t.string;
	open = t.boolean;
	onActivated = t.callback;
	occupiedWidth = t.number;
	screenSize = t.Vector2;
})
local vector2_upvr = Vector2.new(0, 0)
local Constants_upvr = require(Parent.Resources.Constants)
local withStyle_upvr = InGameMenuDependencies.UIBlox.Core.Style.withStyle
local Roact_upvr = InGameMenuDependencies.Roact
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 60
	return {
		currentPage = arg1.menuPage;
		open = arg1.isMenuOpen;
		occupiedWidth = 464;
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 69
	--[[ Upvalues[1]:
		[1]: CloseMenu_upvr (readonly)
	]]
	return {
		onActivated = function() -- Line 71, Named "onActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
		end;
	}
end)(function(arg1) -- Line 28, Named "ViewportOverlay"
	--[[ Upvalues[6]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: vector2_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: withStyle_upvr (readonly)
		[6]: Roact_upvr (readonly)
	]]
	local var11_upvr
	if var11_upvr then
		var11_upvr = assert
		var11_upvr(any_strictInterface_result1_upvr(arg1))
	end
	var11_upvr = arg1.screenSize
	if var11_upvr == vector2_upvr then
		var11_upvr = nil
		return var11_upvr
	end
	if arg1.currentPage ~= Constants_upvr.InitalPageKey then
		var11_upvr = false
	else
		var11_upvr = true
	end
	return withStyle_upvr(function(arg1_2) -- Line 39
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: var11_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		local module = {
			BackgroundColor3 = arg1_2.Theme.Overlay.Color;
			BackgroundTransparency = arg1_2.Theme.Overlay.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
		}
		local var14 = not var11_upvr
		if var14 then
			var14 = arg1.open
		end
		module.Visible = var14
		module.ZIndex = 0
		return Roact_upvr.createElement("Frame", module, {
			InputCapturer = Roact_upvr.createElement("TextButton", {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				Position = UDim2.new(1, 0, 0, 0);
				Size = UDim2.new(1, -arg1.occupiedWidth, 1, 0);
				Text = "";
				[Roact_upvr.Event.Activated] = arg1.onActivated;
			});
		})
	end)
end)