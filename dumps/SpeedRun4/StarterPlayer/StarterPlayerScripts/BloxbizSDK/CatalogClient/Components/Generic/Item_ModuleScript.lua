-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:08
-- Luau version 6, Types version 3
-- Time taken: 0.003997 seconds

local Generic = script.Parent.Parent.Generic
local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Spring_upvr = require(Generic.Spring)
local UICorner_upvr = require(Generic.UICorner)
return function(arg1) -- Line 28
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: UICorner_upvr (readonly)
	]]
	local tbl_upvr = {
		HeldDown = module_upvr.Value(false);
		Hovering = module_upvr.Value(false);
		Selected = module_upvr.Value(false);
		Enabled = module_upvr.Value(true);
	}
	local module = {
		Name = tostring(arg1.AssetId);
	}
	local var8
	if not var8 then
		var8 = Vector2.new(0.5, 0.5)
	end
	module.AnchorPoint = var8
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var8 = Spring_upvr(tbl_upvr, arg1.BackgroundColor3)
		return var8
	end
	if not arg1.BackgroundColor3 or not INLINED() then
		var8 = Color3.fromRGB(79, 84, 95)
	end
	module.BackgroundColor3 = var8
	var8 = arg1.Position
	if not var8 then
		var8 = UDim2.fromScale(0, 0)
	end
	module.Position = var8
	var8 = arg1.Size
	if not var8 then
		var8 = UDim2.fromScale(1, 1)
	end
	module.Size = var8
	var8 = Enum.SizeConstraint.RelativeYY
	module.SizeConstraint = var8
	var8 = true
	module.Visible = var8
	var8 = module_upvr.Children
	module[var8] = {UICorner_upvr(0.065), module_upvr.New("ImageLabel")({
		Name = "Preview";
		Image = string.format("rbxthumb://type=Asset&id=%d&w=150&h=150", arg1.AssetId);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		[module_upvr.OnEvent("MouseButton1Down")] = function() -- Line 60
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.HeldDown:set(true)
		end;
		[module_upvr.OnEvent("MouseButton1Up")] = function() -- Line 64
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.HeldDown:set(false)
		end;
		[module_upvr.OnEvent("MouseEnter")] = function() -- Line 68
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.Hovering:set(true)
		end;
		[module_upvr.OnEvent("MouseLeave")] = function() -- Line 72
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.Hovering:set(false)
			tbl_upvr.HeldDown:set(false)
		end;
		[module_upvr.OnEvent("Activated")] = function() -- Line 77
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_upvr (readonly)
			]]
			if arg1.Toggle and tbl_upvr.Enabled:get() then
				tbl_upvr.Selected:set(tbl_upvr.Selected:get())
			end
			local var16
			if arg1.Callback then
				var16 = tbl_upvr
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var16 = tbl_upvr.Selected:get()
					return var16
				end
				if not arg1.Toggle or not INLINED_2() then
					var16 = nil
				end
				arg1.Callback(var16.Enabled:get(), var16)
			end
		end;
	})}
	return module_upvr.New("Frame")(module)
end