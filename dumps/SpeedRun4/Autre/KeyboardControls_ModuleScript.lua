-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:14
-- Luau version 6, Types version 3
-- Time taken: 0.002775 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Roact
local Controls_upvr = require(Parent.Resources.Controls)
local ControlEntryHeader_upvr = require(script.Parent.Parent.ControlEntryHeader)
local ControlEntry_upvr = require(script.Parent.Parent.ControlEntry)
local ControlLayoutContainer_upvr = require(script.Parent.Parent.ControlLayoutContainer)
local PaddedScrollFrame_upvr = require(Parent.Components.PaddedScrollFrame)
return function(arg1) -- Line 26, Named "KeyboardControls"
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Controls_upvr (readonly)
		[3]: ControlEntryHeader_upvr (readonly)
		[4]: ControlEntry_upvr (readonly)
		[5]: ControlLayoutContainer_upvr (readonly)
		[6]: PaddedScrollFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 95);
			PaddingRight = UDim.new(0, 95);
		});
		SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(1090, math.huge);
			MinSize = Vector2.new(150, 0);
		});
	}
	local var28 = 1
	local var32
	for _, v in ipairs(Controls_upvr.keybinds) do
		local title = v.title
		var32 += 1
		tbl[title.."_header"] = Roact_upvr.createElement(ControlEntryHeader_upvr, {
			title = title;
			LayoutOrder = var28;
		})
		for i_2, v_2 in ipairs(v.controls) do
			local tbl_2 = {
				LayoutOrder = var28 + 1;
				actionDescription = v_2.desc;
				inputs = v_2.inputs;
			}
			local list = v_2.list
			tbl_2.isList = list
			if i_2 == #v.controls then
				list = false
			else
				list = true
			end
			tbl_2.hasDivider = list
			tbl[title..'_'..i_2] = Roact_upvr.createElement(ControlEntry_upvr, tbl_2)
		end
	end
	return Roact_upvr.createElement(ControlLayoutContainer_upvr, {
		titleText = "CoreScripts.InGameMenu.Controls.KeyboardAndMouseTitle";
	}, {
		ScrollContent = Roact_upvr.createElement(PaddedScrollFrame_upvr, {
			CanvasSize = UDim2.new(0, 0, 0, var32 * 45 + (0 + 1) * 50);
			ScrollingDirection = Enum.ScrollingDirection.Y;
			Size = UDim2.new(1, 0, 1, -130);
		}, {
			ListContainer = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.new(0.5, 0, 0, 0);
			}, tbl);
		});
	})
end