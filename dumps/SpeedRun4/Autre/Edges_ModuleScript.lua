-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:12
-- Luau version 6, Types version 3
-- Time taken: 0.005682 seconds

local CorePackages = game:GetService("CorePackages")
local var2_upvw
pcall(function() -- Line 8
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw = game:GetService("PlatformService")
end)
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local React_upvr = require(CorePackages.Packages.React)
local function EdgeImage_upvr(arg1) -- Line 28, Named "EdgeImage"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	return React_upvr.createElement("ImageLabel", {
		Size = UDim2.new(0, 95, 0, 95);
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
		BackgroundTransparency = 1;
		Rotation = arg1.Rotation;
		Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/ScreenAdjustmentArrow.png";
	})
end
local any_extend_result1 = React_upvr.Component:extend("Edges")
local Utility_upvr = require(Modules.Shell.Utility)
local vector2_upvr_3 = Vector2.new(0.85, 0.85)
local vector2_upvr_2 = Vector2.new(1920, 1080)
local vector2_upvr = Vector2.new(0, 0)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("MigrateOverscanToGameBasicSettings")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local Game_Options_upvr = settings():FindFirstChild("Game Options")
local vector2_upvr_4 = Vector2.new(0.9, 0.9)
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.init(arg1) -- Line 41
	--[[ Upvalues[9]:
		[1]: Utility_upvr (readonly)
		[2]: vector2_upvr_3 (readonly)
		[3]: vector2_upvr_2 (readonly)
		[4]: vector2_upvr (readonly)
		[5]: game_GetEngineFeature_result1_upvr (readonly)
		[6]: UserGameSettings_upvr (readonly)
		[7]: Game_Options_upvr (readonly)
		[8]: vector2_upvr_4 (readonly)
		[9]: UserInputService_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 42, Named "getCurrentEdgePercent"
		--[[ Upvalues[2]:
			[1]: Utility_upvr (copied, readonly)
			[2]: vector2_upvr_3 (copied, readonly)
		]]
		return Utility_upvr.ClampVector2(vector2_upvr_3, Vector2.new(1, 1), arg1_2)
	end
	local function _(arg1_3) -- Line 46, Named "getCurrentEdgeSize"
		--[[ Upvalues[3]:
			[1]: vector2_upvr_2 (copied, readonly)
			[2]: Utility_upvr (copied, readonly)
			[3]: vector2_upvr (copied, readonly)
		]]
		local var17 = arg1_3 * vector2_upvr_2
		return Utility_upvr.ClampVector2(vector2_upvr, vector2_upvr_2, Vector2.new(Utility_upvr.Round(var17.X / 2), Utility_upvr.Round(var17.Y / 2)) * 2)
	end
	function arg1.onAdjustThumbstick(arg1_4, arg2, arg3) -- Line 52
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Utility_upvr (copied, readonly)
		]]
		arg1._stickPosition = Utility_upvr.GamepadLinearToCurve(Vector2.new(arg3.Position.X, -arg3.Position.Y), 0.2)
	end
	function arg1.onAccept() -- Line 56
		--[[ Upvalues[4]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Game_Options_upvr (copied, readonly)
		]]
		local _, _ = pcall(function() -- Line 57
			--[[ Upvalues[4]:
				[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: Game_Options_upvr (copied, readonly)
			]]
			if game_GetEngineFeature_result1_upvr then
				UserGameSettings_upvr.Overscan = Vector2.new(math.min(1, arg1._edgePercent.X), math.min(1, arg1._edgePercent.Y))
			else
				Game_Options_upvr.OverscanPX = math.min(1, arg1._edgePercent.X)
				Game_Options_upvr.OverscanPY = math.min(1, arg1._edgePercent.Y)
			end
		end)
		if arg1.props.onSetEdges then
			arg1.props.onSetEdges()
		end
	end
	function arg1.onRenderStep() -- Line 73
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: vector2_upvr (copied, readonly)
			[3]: Utility_upvr (copied, readonly)
			[4]: vector2_upvr_3 (copied, readonly)
			[5]: vector2_upvr_2 (copied, readonly)
		]]
		if arg1._lastUpdate then
			if arg1._stickPosition ~= vector2_upvr then
				local var24 = tick() - arg1._lastUpdate
				arg1._edgePercent = Utility_upvr.ClampVector2(vector2_upvr_3, Vector2.new(1, 1), arg1._stickPosition * arg1._acceleration * var24 * 0.05 + arg1._edgePercent)
				arg1._acceleration = math.min(arg1._acceleration + var24 * 1, 3)
				local tbl = {}
				local var26 = arg1._edgePercent * vector2_upvr_2
				tbl.currentSize = Utility_upvr.ClampVector2(vector2_upvr, vector2_upvr_2, Vector2.new(Utility_upvr.Round(var26.X / 2), Utility_upvr.Round(var26.Y / 2)) * 2)
				arg1:setState(tbl)
			else
				arg1._acceleration = 1
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1._lastUpdate = tick()
	end
	function arg1.onSuspended() -- Line 92
		--[[ Upvalues[4]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Game_Options_upvr (copied, readonly)
		]]
		pcall(function() -- Line 93
			--[[ Upvalues[4]:
				[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: Game_Options_upvr (copied, readonly)
			]]
			if game_GetEngineFeature_result1_upvr then
				UserGameSettings_upvr.Overscan = Vector2.new(arg1._lastSavedOverscan.X, arg1._lastSavedOverscan.Y)
			else
				Game_Options_upvr.OverscanPX = arg1._lastSavedOverscan.X
				Game_Options_upvr.OverscanPY = arg1._lastSavedOverscan.Y
			end
		end)
	end
	local any_ClampVector2_result1_upvw = Utility_upvr.ClampVector2(vector2_upvr_3, Vector2.new(1, 1), vector2_upvr_4)
	local var30 = any_ClampVector2_result1_upvw * vector2_upvr_2
	local any_ClampVector2_result1_upvw_2 = Utility_upvr.ClampVector2(vector2_upvr, vector2_upvr_2, Vector2.new(Utility_upvr.Round(var30.X / 2), Utility_upvr.Round(var30.Y / 2)) * 2)
	if UserInputService_upvr:GetPlatform() == Enum.Platform.XBoxOne then
		pcall(function() -- Line 106
			--[[ Upvalues[10]:
				[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
				[3]: any_ClampVector2_result1_upvw (read and write)
				[4]: Utility_upvr (copied, readonly)
				[5]: vector2_upvr_3 (copied, readonly)
				[6]: any_ClampVector2_result1_upvw_2 (read and write)
				[7]: vector2_upvr_2 (copied, readonly)
				[8]: vector2_upvr (copied, readonly)
				[9]: arg1 (readonly)
				[10]: Game_Options_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [18] 13. Error Block 4 start (CF ANALYSIS FAILED)
			any_ClampVector2_result1_upvw = Vector2.new(UserGameSettings_upvr.Overscan.x, UserGameSettings_upvr.Overscan.y)
			any_ClampVector2_result1_upvw = Utility_upvr.ClampVector2(vector2_upvr_3, Vector2.new(1, 1), any_ClampVector2_result1_upvw)
			local var33 = any_ClampVector2_result1_upvw * vector2_upvr_2
			any_ClampVector2_result1_upvw_2 = Utility_upvr.ClampVector2(vector2_upvr, vector2_upvr_2, Vector2.new(Utility_upvr.Round(var33.X / 2), Utility_upvr.Round(var33.Y / 2)) * 2)
			arg1._lastSavedOverscan = Vector2.new(UserGameSettings_upvr.Overscan.x, UserGameSettings_upvr.Overscan.y)
			UserGameSettings_upvr.Overscan = Vector2.new(1, 1)
			do
				return
			end
			-- KONSTANTERROR: [18] 13. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [101] 75. Error Block 9 start (CF ANALYSIS FAILED)
			if 0 < Game_Options_upvr.OverscanPX and 0 < Game_Options_upvr.OverscanPY then
				any_ClampVector2_result1_upvw = Vector2.new(Game_Options_upvr.OverscanPX, Game_Options_upvr.OverscanPY)
				any_ClampVector2_result1_upvw = Utility_upvr.ClampVector2(vector2_upvr_3, Vector2.new(1, 1), any_ClampVector2_result1_upvw)
				local var34 = any_ClampVector2_result1_upvw * vector2_upvr_2
				any_ClampVector2_result1_upvw_2 = Utility_upvr.ClampVector2(vector2_upvr, vector2_upvr_2, Vector2.new(Utility_upvr.Round(var34.X / 2), Utility_upvr.Round(var34.Y / 2)) * 2)
				arg1._lastSavedOverscan = Vector2.new(Game_Options_upvr.OverscanPX, Game_Options_upvr.OverscanPY)
				Game_Options_upvr.OverscanPX = 1
				Game_Options_upvr.OverscanPY = 1
			end
			-- KONSTANTERROR: [101] 75. Error Block 9 end (CF ANALYSIS FAILED)
		end)
	end
	arg1._stickPosition = vector2_upvr
	arg1._edgePercent = any_ClampVector2_result1_upvw
	arg1._lastUpdate = nil
	arg1._acceleration = 1
	arg1._seenAPressed = false
	arg1.state = {
		currentSize = any_ClampVector2_result1_upvw_2;
	}
end
local RenderStep_upvr = require(Modules.Shell.Components.RenderStep)
local ContextActionEvent_upvr = require(Modules.Shell.Components.ContextActionEvent)
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 145
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: EdgeImage_upvr (readonly)
		[3]: RenderStep_upvr (readonly)
		[4]: ContextActionEvent_upvr (readonly)
		[5]: var2_upvw (read and write)
		[6]: ExternalEventConnection_upvr (readonly)
	]]
	local module = {
		SelectionImage = React_upvr.createElement("ImageLabel", {
			Size = UDim2.new(1, 2, 1, 2);
			Position = UDim2.new(0, -1, 0, -1);
			BackgroundTransparency = 1;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(21, 21, 41, 41);
			Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/ScreenRangeOverlay.png";
		});
		TopLeft = React_upvr.createElement(EdgeImage_upvr, {
			Rotation = 0;
			Position = UDim2.new(0, 0, 0, 0);
			AnchorPoint = Vector2.new(0, 0);
		});
		TopRight = React_upvr.createElement(EdgeImage_upvr, {
			Rotation = 90;
			Position = UDim2.new(1, 0, 0, 0);
			AnchorPoint = Vector2.new(1, 0);
		});
		BottomRight = React_upvr.createElement(EdgeImage_upvr, {
			Rotation = 180;
			Position = UDim2.new(1, 0, 1, 0);
			AnchorPoint = Vector2.new(1, 1);
		});
		BottomLeft = React_upvr.createElement(EdgeImage_upvr, {
			Rotation = 270;
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
		});
		Render = React_upvr.createElement(RenderStep_upvr, {
			name = "UpdateAdjustmentScreen";
			priority = Enum.RenderPriority.Input.Value;
			callback = arg1.onRenderStep;
		});
		AdjustConnectorThumbstick = React_upvr.createElement(ContextActionEvent_upvr, {
			name = "ThumbstickAdjustmentScreen";
			callback = arg1.onAdjustThumbstick;
			binds = {Enum.KeyCode.Thumbstick2};
		});
	}
	local var49 = var2_upvw
	if var49 then
		var49 = React_upvr.createElement
		var49 = var49(ExternalEventConnection_upvr, {
			event = var2_upvw.Suspended;
			callback = arg1.onSuspended;
		})
	end
	module.SuspendedCn = var49
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(0, arg1.state.currentSize.X, 0, arg1.state.currentSize.Y);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
	}, module)
end
return any_extend_result1