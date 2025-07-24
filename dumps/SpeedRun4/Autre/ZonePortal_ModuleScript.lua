-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.001943 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent
local Direction = require(Parent.Enums.Direction)
local PortalSize = require(Parent.Resources.Constants).Zone.PortalSize
local tbl_upvr = {
	[Direction.Up] = {
		size = UDim2.new(1, 0, 0, PortalSize);
		position = UDim2.new(0, 0, 0, 0);
	};
	[Direction.Down] = {
		size = UDim2.new(1, 0, 0, PortalSize);
		position = UDim2.new(0, 0, 1, -PortalSize);
	};
	[Direction.Left] = {
		size = UDim2.new(0, PortalSize, 1, 0);
		position = UDim2.new(0, 0, 0, 0);
	};
	[Direction.Right] = {
		size = UDim2.new(0, PortalSize, 1, 0);
		position = UDim2.new(1, -PortalSize, 0, 0);
	};
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ZonePortal")
any_extend_result1.validateProps = t.strictInterface({
	targetZone = t.number;
	direction = Direction.isEnumValue;
	setCurrentZone = t.optional(t.callback);
})
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.render(arg1) -- Line 49
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
	]]
	local var18_upvr = tbl_upvr[arg1.props.direction]
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 53
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: var18_upvr (readonly)
			[3]: CursorKind_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			Size = var18_upvr.size;
			Position = var18_upvr.position;
			BackgroundTransparency = 1;
			Selectable = true;
			ZIndex = 2147483647;
			SelectionImageObject = arg1_2(CursorKind_upvr.Invisible);
			[Roact_upvr.Event.SelectionGained] = function() -- Line 61
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.props.setCurrentZone(arg1.props.targetZone)
			end;
		})
	end)
end
local SetCurrentZone_upvr = require(Parent.Actions.SetCurrentZone)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 68
	--[[ Upvalues[1]:
		[1]: SetCurrentZone_upvr (readonly)
	]]
	return {
		setCurrentZone = function(arg1_3) -- Line 70, Named "setCurrentZone"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetCurrentZone_upvr (copied, readonly)
			]]
			return arg1(SetCurrentZone_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)