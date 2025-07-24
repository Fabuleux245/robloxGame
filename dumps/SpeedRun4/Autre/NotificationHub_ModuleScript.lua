-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:24
-- Luau version 6, Types version 3
-- Time taken: 0.021725 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local Panel3D_upvr = require(CorePackages.Workspace.Packages.VrCommon).Panel3D
local VRHub_upvr = require(RobloxGui.Modules.VR.VRHub)
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Color3_new_result1_upvr_3 = Color3.new(0.3058823529411765, 0.32941176470588235, 0.3764705882352941)
local var9_upvr = Create_upvr("ImageLabel")({
	BackgroundTransparency = 1;
	Image = "";
})
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local module_upvr_2 = {
	ModuleName = "Notifications";
	KeepVRTopbarOpen = true;
	VRIsExclusive = true;
	VRClosesNonExclusive = true;
	UnreadCountChanged = function(...) -- Line 79
	end;
	SetVisible = nil;
}
VRHub_upvr:RegisterModule(module_upvr_2)
local any_Get_result1_upvr = Panel3D_upvr.Get("Notifications")
local any_Get_result1_upvr_2 = Panel3D_upvr.Get("NotificationDetails")
local function _() -- Line 88, Named "IsDeveloperGroupEnabled"
	return false
end
local tbl_10 = {}
local tbl_3_upvr = {
	__index = tbl_10;
}
local tbl_5_upvr = {}
local Color3_new_result1_upvr_2 = Color3.new(0.0784313725490196, 0.0784313725490196, 0.0784313725490196)
local function new(arg1, arg2, arg3) -- Line 96
	--[[ Upvalues[6]:
		[1]: tbl_5_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: Color3_new_result1_upvr_3 (readonly)
		[4]: Color3_new_result1_upvr (readonly)
		[5]: Color3_new_result1_upvr_2 (readonly)
		[6]: tbl_3_upvr (readonly)
	]]
	local module_upvr = {}
	table.insert(tbl_5_upvr, module_upvr)
	module_upvr.zeroCF = arg1.localCF
	module_upvr.zOffset = 0
	module_upvr.isPopping = false
	module_upvr.isAnimating = false
	module_upvr.tweener = nil
	module_upvr.panel = arg1
	module_upvr.SetPopOut = nil
	module_upvr.panel.OnMouseEnter = function() -- Line 106
		--[[ Upvalues[2]:
			[1]: tbl_5_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		for _, v in pairs(tbl_5_upvr) do
			if v ~= module_upvr then
				v:SetPopOut(false)
			end
		end
		module_upvr:SetPopOut(true)
	end
	local tbl_2 = {}
	tbl_2.Parent = arg2
	tbl_2.Name = "TitlebarBackground"
	tbl_2.Position = UDim2.new(0, -1, 0, -1)
	tbl_2.Size = UDim2.new(1, 2, 0, 74)
	tbl_2.BackgroundTransparency = 1
	tbl_2.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
	tbl_2.ImageColor3 = Color3_new_result1_upvr_3
	tbl_2.ScaleType = Enum.ScaleType.Slice
	tbl_2.SliceCenter = Rect.new(10, 10, 10, 10)
	module_upvr.titlebar = Create_upvr("ImageLabel")(tbl_2)
	local tbl_9 = {
		Parent = module_upvr.titlebar;
		Name = "TitleText";
		Position = UDim2.new(0, 1, 0, 1);
		Size = UDim2.new(1, -2, 1, -2);
	}
	tbl_9.Text = arg3
	tbl_9.TextColor3 = Color3_new_result1_upvr
	tbl_9.Font = Enum.Font.SourceSans
	tbl_9.FontSize = Enum.FontSize.Size36
	tbl_9.BackgroundTransparency = 1
	module_upvr.titleText = Create_upvr("TextLabel")(tbl_9)
	local tbl_7 = {}
	tbl_7.Parent = arg2
	tbl_7.Name = "ContentFrame"
	tbl_7.Position = UDim2.new(0, -1, 0, 74)
	tbl_7.Size = UDim2.new(1, 2, 1, -76)
	tbl_7.BackgroundTransparency = 1
	tbl_7.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
	tbl_7.ImageColor3 = Color3_new_result1_upvr_2
	tbl_7.ImageTransparency = 0.5
	tbl_7.ScaleType = Enum.ScaleType.Slice
	tbl_7.SliceCenter = Rect.new(10, 10, 10, 10)
	module_upvr.content = Create_upvr("ImageLabel")(tbl_7)
	return setmetatable(module_upvr, tbl_3_upvr)
end
tbl_10.new = new
function tbl_10.SetTitle(arg1, arg2) -- Line 163
	arg1.titleText.Text = arg2
end
function tbl_10.AddCloseButton(arg1, arg2) -- Line 167
	--[[ Upvalues[1]:
		[1]: Create_upvr (readonly)
	]]
	arg1.closeButton = Create_upvr("ImageButton")({
		Parent = arg1.titlebar;
		Name = "CloseButton";
		Position = UDim2.new(0, 22, 0, 22);
		Size = UDim2.new(0, 32, 0, 32);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Keyboard/close_button_icon.png";
		SelectionImageObject = Create_upvr("ImageButton")({
			Name = "CloseButtonHover";
			Position = UDim2.new(0, -11, 0, -11);
			Size = UDim2.new(1, 22, 1, 22);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Keyboard/close_button_selection.png";
		});
	})
	arg1.closeButton.MouseButton1Click:connect(arg2)
end
function tbl_10.TweenZOffsetTo(arg1, arg2, arg3, arg4, arg5) -- Line 189
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	if arg1.tweener and not arg1.tweener:IsFinished() then
		arg1.tweener:Cancel()
	end
	arg1.tweener = Utility_upvr:TweenProperty(arg1, "zOffset", arg1.zOffset, arg2, arg3, arg4, arg5)
end
function tbl_10.AnimateOut(arg1, arg2) -- Line 196
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	arg1.isAnimating = true
	arg1:TweenZOffsetTo(-100, 0.25, Utility_upvr:GetEaseInOutQuad(), function() -- Line 198
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg2 then
			arg2()
		end
		arg1.isAnimating = false
	end)
end
function tbl_10.AnimateIn(arg1, arg2) -- Line 204
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	arg1.zOffset = -100
	arg1:OnUpdate(0)
	arg1.isAnimating = true
	arg1:TweenZOffsetTo(0, 0.25, Utility_upvr:GetEaseInOutQuad(), function() -- Line 208
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg2 then
			arg2()
		end
		arg1.isAnimating = false
	end)
end
function tbl_10.SetPopOut(arg1, arg2) -- Line 214
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	if arg1.isAnimating then
	else
		if arg2 then
			arg1.isPopping = true
			arg1:TweenZOffsetTo(0.25, 0.25, Utility_upvr:GetEaseInOutQuad(), function() -- Line 221
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.isPopping = false
			end)
			return
		end
		arg1.isPopping = true
		arg1:TweenZOffsetTo(0, 0.25, Utility_upvr:GetEaseInOutQuad(), function() -- Line 226
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.isPopping = false
		end)
	end
end
local Color3_new_result1_upvr_4 = Color3.new(0.3215686274509804, 0.396078431372549, 0.5529411764705883)
local function OnUpdate(arg1, arg2) -- Line 232
	--[[ Upvalues[2]:
		[1]: Color3_new_result1_upvr_3 (readonly)
		[2]: Color3_new_result1_upvr_4 (readonly)
	]]
	arg1.panel.localCF = arg1.zeroCF * CFrame.new(0, 0, arg1.zOffset)
	local isAnimating = arg1.isAnimating
	if not isAnimating then
		isAnimating = arg1.isPopping
	end
	arg1.panel.needsLocalPositionUpdate = isAnimating
	if arg1.isPopping then
		arg1.titlebar.ImageColor3 = Color3_new_result1_upvr_3:lerp(Color3_new_result1_upvr_4, math.max(0, math.min(1, arg1.zOffset / 0.25)))
	end
end
tbl_10.OnUpdate = OnUpdate
tbl_5_upvr = any_Get_result1_upvr:SetType
tbl_5_upvr(Panel3D_upvr.Type.Standard)
tbl_5_upvr = any_Get_result1_upvr:SetVisible
tbl_5_upvr(false)
tbl_5_upvr = any_Get_result1_upvr:SetCanFade
tbl_5_upvr(false)
tbl_5_upvr = any_Get_result1_upvr:ResizeStuds
tbl_5_upvr(2.277333324, 3.5, 150)
tbl_5_upvr = Create_upvr
tbl_3_upvr = "TextButton"
tbl_5_upvr = tbl_5_upvr(tbl_3_upvr)
tbl_3_upvr = {}
local OnUpdate = tbl_3_upvr
OnUpdate.Parent = any_Get_result1_upvr:GetGUI()
OnUpdate.Name = "NotificationsListFrame"
OnUpdate.Position = UDim2.new(0, 0, 0, 0)
OnUpdate.Size = UDim2.new(1, -4, 1, 0)
OnUpdate.BackgroundTransparency = 1
OnUpdate.Text = ""
OnUpdate.Selectable = true
OnUpdate.SelectionImageObject = var9_upvr
tbl_5_upvr = tbl_5_upvr(OnUpdate)
OnUpdate = tbl_10.new(any_Get_result1_upvr, tbl_5_upvr, "Notifications")
local var38_upvw = OnUpdate
OnUpdate = var38_upvw:AddCloseButton
OnUpdate(function() -- Line 263
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	module_upvr_2:SetVisible(false)
end)
function OnUpdate(arg1, arg2) -- Line 266
	--[[ Upvalues[1]:
		[1]: var38_upvw (read and write)
	]]
	var38_upvw:OnUpdate(arg2)
end
any_Get_result1_upvr.OnUpdate = OnUpdate
tbl_5_upvr = any_Get_result1_upvr_2:SetType
tbl_5_upvr(Panel3D_upvr.Type.Standard)
tbl_5_upvr = any_Get_result1_upvr_2:SetVisible
tbl_5_upvr(false)
tbl_5_upvr = any_Get_result1_upvr_2:SetCanFade
tbl_5_upvr(false)
tbl_5_upvr = any_Get_result1_upvr_2:ResizeStuds
tbl_5_upvr(3.4159999859999997, 3.5, 150)
tbl_5_upvr = Create_upvr
OnUpdate = "TextButton"
tbl_5_upvr = tbl_5_upvr(OnUpdate)
OnUpdate = {}
local OnUpdate = OnUpdate
OnUpdate.Parent = any_Get_result1_upvr_2:GetGUI()
OnUpdate.Name = "NotificationsDetailFrame"
OnUpdate.Position = UDim2.new(0, 0, 0, 0)
OnUpdate.Size = UDim2.new(1, 0, 1, 0)
OnUpdate.BackgroundTransparency = 1
OnUpdate.Text = ""
OnUpdate.Selectable = true
OnUpdate.SelectionImageObject = var9_upvr
tbl_5_upvr = tbl_5_upvr(OnUpdate)
OnUpdate = tbl_10.new(any_Get_result1_upvr_2, tbl_5_upvr, "Friend Requests")
local var41_upvw = OnUpdate
function OnUpdate(arg1, arg2) -- Line 291
	--[[ Upvalues[1]:
		[1]: var41_upvw (read and write)
	]]
	var41_upvw:OnUpdate(arg2)
end
any_Get_result1_upvr_2.OnUpdate = OnUpdate
tbl_5_upvr = {}
local var42_upvr = tbl_5_upvr
OnUpdate = {}
local var43_upvr = OnUpdate
local var45_upvw
local function layoutNotificationsGroups_upvr() -- Line 303, Named "layoutNotificationsGroups"
	--[[ Upvalues[3]:
		[1]: var43_upvr (readonly)
		[2]: any_Get_result1_upvr (readonly)
		[3]: var45_upvw (read and write)
	]]
	for _, v_2 in ipairs(var43_upvr) do
		if 0 < #v_2.notifications then
			v_2.frame.Position = UDim2.new(0.07500000000000001, 0, 0, 20)
			v_2.frame.Size = UDim2.new(0.85, -40, 0, (math.min(3, #v_2.notifications) - 1) * 20 + 80)
			if v_2.notificationsDirty then
				v_2.notificationsDirty = false
				local var70 = 0
				local _ = 0
				local len = #v_2.notifications
				if 0 < len then
					for i_3 = 1, len do
						local var73 = v_2.notifications[i_3]
						if math.max(1, len - 3 + 1) <= i_3 then
							var73.frame.Visible = true
							var73.frame.Position = UDim2.new(0, var70, 0, var70)
						else
							var73.frame.Visible = false
						end
					end
					if var45_upvw == v_2 then
						i_3 = len - 2 + 1
						i_3 = 1
						for i_4 = 1, len, i_3 do
							local var75 = v_2.notifications[i_4]
							if math.max(1, i_3) <= i_4 then
								var75.detailsFrame.Visible = true
								var75.detailsFrame.Position = UDim2.new(0, 20, 0, 20)
								var75.detailsFrame.Size = UDim2.new(1, -40, 0.5, -40)
							else
								var75.detailsFrame.Visible = false
							end
						end
					end
				end
			end
		end
	end
end
local tbl = {}
local tbl_4_upvr = {
	__index = tbl;
}
local function new(arg1, arg2, arg3) -- Line 362
	--[[ Upvalues[5]:
		[1]: tbl_4_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: var38_upvw (read and write)
		[4]: var42_upvr (readonly)
		[5]: var43_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_4_upvr)
	setmetatable_result1.key = arg1
	setmetatable_result1.title = arg2
	setmetatable_result1.order = arg3
	setmetatable_result1.notifications = {}
	setmetatable_result1.notificationsDirty = false
	setmetatable_result1.frame = Create_upvr("Frame")({
		Parent = var38_upvw.content;
		Name = "NotificationGroup";
		BackgroundTransparency = 1;
	})
	setmetatable_result1.detailsFrame = Create_upvr("Frame")({
		Parent = nil;
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 1, 0);
	})
	var42_upvr[arg1] = setmetatable_result1
	table.insert(var43_upvr, setmetatable_result1)
	return setmetatable_result1
end
tbl.new = new
function tbl.Deactivate(arg1) -- Line 389
	--[[ Upvalues[1]:
		[1]: any_Get_result1_upvr_2 (readonly)
	]]
	arg1.detailsFrame.Parent = nil
	for _, v_3 in pairs(arg1.detailsFrame:GetChildren()) do
		any_Get_result1_upvr_2:RemoveSubpanel(v_3)
	end
end
function tbl.SwitchTo(arg1) -- Line 396
	--[[ Upvalues[3]:
		[1]: var41_upvw (read and write)
		[2]: var42_upvr (readonly)
		[3]: var45_upvw (read and write)
	]]
	var41_upvw:SetTitle(arg1.title)
	for _, v_4 in pairs(var42_upvr) do
		if v_4 ~= arg1 then
			v_4:Deactivate()
		end
	end
	arg1.detailsFrame.Parent = var41_upvw.content
	var45_upvw = arg1
	arg1.notificationsDirty = true
end
function tbl.BringNotificationToFront(arg1, arg2) -- Line 409
	--[[ Upvalues[2]:
		[1]: var45_upvw (read and write)
		[2]: layoutNotificationsGroups_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	if var45_upvw ~= arg1 then
		arg1:SwitchTo()
	end
	if #arg1.notifications ~= 0 and arg2 == arg1.notifications[#arg1.notifications] then
		layoutNotificationsGroups_upvr()
		return
	end
	local ipairs_result1, ipairs_result2_3, ipairs_result3_2 = ipairs(arg1.notifications)
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 26. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 26. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 20. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [37.6]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [37.2147483650]
	-- KONSTANTERROR: [28] 20. Error Block 7 end (CF ANALYSIS FAILED)
end
function tbl.RemoveNotification(arg1, arg2) -- Line 432
	--[[ Upvalues[3]:
		[1]: any_Get_result1_upvr (readonly)
		[2]: any_Get_result1_upvr_2 (readonly)
		[3]: layoutNotificationsGroups_upvr (readonly)
	]]
	for i_7, v_5 in ipairs(arg1.notifications) do
		if v_5 == arg2 then
			table.remove(arg1.notifications, i_7)
			any_Get_result1_upvr:RemoveSubpanel(arg2.frame)
			any_Get_result1_upvr_2:RemoveSubpanel(arg2.detailsFrame)
			arg2.detailsFrame:Destroy()
			arg2.frame:Destroy()
			arg1.notificationsDirty = true
			layoutNotificationsGroups_upvr()
			return
		end
	end
end
function tbl.GetTopNotification(arg1) -- Line 448
	local len_2 = #arg1.notifications
	if len_2 <= 0 then
		return nil
	end
	return arg1.notifications[len_2]
end
tbl_4_upvr = tbl.new
tbl_4_upvr("Friends", "Friends", 1)
tbl_4_upvr = tbl.new
tbl_4_upvr("BadgeAwards", "Badges", 2)
tbl_4_upvr = tbl.new
tbl_4_upvr("PlayerPoints", "Points", 3)
tbl_4_upvr = false
if tbl_4_upvr then
	tbl_4_upvr = tbl.new
	tbl_4_upvr("Developer", "Other", 4)
end
tbl_4_upvr = table.sort
tbl_4_upvr(var43_upvr, function(arg1, arg2) -- Line 298, Named "groupSort"
	local var44
	if arg1.order >= arg2.order then
		var44 = false
	else
		var44 = true
	end
	return var44
end)
function tbl_4_upvr(arg1, ...) -- Line 465, Named "doCallback"
	if not arg1 then
	else
		if type(arg1) == "function" then
			arg1(...)
			return
		end
		if arg1:IsA("BindableEvent") then
			arg1:Fire(...)
			return
		end
		if arg1:IsA("BindableFunction") then
			arg1:Invoke(...)
			return
		end
	end
end
local tbl_upvr = {}
local module_upvr_3 = {
	__index = tbl_upvr;
}
local Color3_new_result1_upvr_5 = Color3.new(0.2, 0.2, 0.2)
function tbl_upvr.new(arg1, arg2) -- Line 487
	--[[ Upvalues[8]:
		[1]: module_upvr_3 (readonly)
		[2]: Create_upvr (readonly)
		[3]: var9_upvr (readonly)
		[4]: Color3_new_result1_upvr_5 (readonly)
		[5]: Color3_new_result1_upvr (readonly)
		[6]: any_Get_result1_upvr_2 (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: layoutNotificationsGroups_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setmetatable_result1_upvr = setmetatable({}, module_upvr_3)
	setmetatable_result1_upvr.group = arg1
	setmetatable_result1_upvr.frame = Create_upvr("ImageButton")({
		Parent = arg1.frame;
		Size = UDim2.new(1, 0, 0, 80);
		SelectionImageObject = var9_upvr;
		BackgroundTransparency = 1;
	})
	setmetatable_result1_upvr.frame.MouseButton1Click:connect(function() -- Line 498
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnClicked()
	end)
	setmetatable_result1_upvr.background = Create_upvr("ImageLabel")({
		Parent = setmetatable_result1_upvr.frame;
		Position = UDim2.new(0, -1, 0, -1);
		Size = UDim2.new(1, 2, 1, 2);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/vr/rectBackgroundWhite.png";
		ImageColor3 = Color3_new_result1_upvr_5;
		ImageTransparency = 0.1;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(10, 10, 10, 10);
	})
	local tbl_6 = {
		Parent = setmetatable_result1_upvr.frame;
		Position = UDim2.new(0, 5, 0, 5);
		Size = UDim2.new(0, 70, 0, 70);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/VR/circleWhite.png";
	}
	local createButton
	if not createButton then
		createButton = Color3.new(1, 1, 1)
	end
	tbl_6.ImageColor3 = createButton
	setmetatable_result1_upvr.imageBackground = Create_upvr("ImageLabel")(tbl_6)
	local tbl_8 = {}
	createButton = setmetatable_result1_upvr.imageBackground
	tbl_8.Parent = createButton
	createButton = UDim2.new(0, 0, 0, 0)
	tbl_8.Position = createButton
	createButton = UDim2.new(1, 0, 1, 0)
	tbl_8.Size = createButton
	createButton = 1
	tbl_8.BackgroundTransparency = createButton
	createButton = arg2.Image
	tbl_8.Image = createButton
	setmetatable_result1_upvr.image = Create_upvr("ImageLabel")(tbl_8)
	local var110
	if arg2.Title and arg2.Text then
		var110 = "%s\n%s":format(arg2.Title, arg2.Text)
	end
	createButton = "TextLabel"
	createButton = {}
	createButton.Parent = setmetatable_result1_upvr.frame
	createButton.Position = UDim2.new(0, 80, 0, 0)
	createButton.Size = UDim2.new(1, -80, 1, 0)
	createButton.BackgroundTransparency = 1
	createButton.TextXAlignment = Enum.TextXAlignment.Left
	createButton.Text = var110
	createButton.TextWrapped = true
	createButton.Font = Enum.Font.SourceSans
	createButton.FontSize = Enum.FontSize.Size18
	createButton.TextColor3 = Color3_new_result1_upvr
	setmetatable_result1_upvr.text = Create_upvr(createButton)(createButton)
	createButton = "Frame"
	createButton = {}
	createButton.Parent = arg1.detailsFrame
	createButton.BackgroundTransparency = 1
	setmetatable_result1_upvr.detailsFrame = Create_upvr(createButton)(createButton)
	createButton = setmetatable_result1_upvr.detailsFrame
	createButton.MouseEnter:connect(function() -- Line 558
		--[[ Upvalues[2]:
			[1]: any_Get_result1_upvr_2 (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		any_Get_result1_upvr_2:SetSubpanelDepth(setmetatable_result1_upvr.detailsFrame, 0.25)
	end)
	createButton = setmetatable_result1_upvr.detailsFrame
	createButton.MouseLeave:connect(function() -- Line 561
		--[[ Upvalues[2]:
			[1]: any_Get_result1_upvr_2 (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		any_Get_result1_upvr_2:SetSubpanelDepth(setmetatable_result1_upvr.detailsFrame, 0)
	end)
	createButton = "ImageLabel"
	createButton = {}
	createButton.Parent = setmetatable_result1_upvr.detailsFrame
	createButton.Position = UDim2.new(0, -1, 0, -1)
	createButton.Size = UDim2.new(1, 2, 1, 2)
	createButton.BackgroundTransparency = 1
	createButton.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
	createButton.ImageColor3 = Color3.new(0.2, 0.2, 0.2)
	createButton.ImageTransparency = 0.1
	createButton.ScaleType = Enum.ScaleType.Slice
	createButton.SliceCenter = Rect.new(10, 10, 10, 10)
	setmetatable_result1_upvr.detailsBackground = Create_upvr(createButton)(createButton)
	createButton = "ImageLabel"
	createButton = {}
	createButton.Parent = setmetatable_result1_upvr.detailsFrame
	createButton.Position = UDim2.new(0, 20, 0, 10)
	createButton.Size = UDim2.new(0, 80, 0, 80)
	createButton.BackgroundTransparency = 1
	createButton.Image = "rbxasset://textures/ui/VR/circleWhite.png"
	local imgBackgroundColor = arg2.imgBackgroundColor
	if not imgBackgroundColor then
		imgBackgroundColor = Color3.new(1, 1, 1)
	end
	createButton.ImageColor3 = imgBackgroundColor
	setmetatable_result1_upvr.detailsIconBackground = Create_upvr(createButton)(createButton)
	createButton = "ImageLabel"
	createButton = {}
	createButton.Parent = setmetatable_result1_upvr.detailsIconBackground
	createButton.Position = UDim2.new(0, 0, 0, 0)
	createButton.Size = UDim2.new(1, 0, 1, 0)
	createButton.BackgroundTransparency = 1
	createButton.Image = arg2.Image
	setmetatable_result1_upvr.detailsIcon = Create_upvr(createButton)(createButton)
	if not arg2.DetailText then
	end
	createButton = Create_upvr("TextLabel")
	createButton = createButton({
		Parent = setmetatable_result1_upvr.detailsFrame;
		Position = UDim2.new(0, 110, 0, 10);
		Size = UDim2.new(1, -120, 0, 90);
		BackgroundTransparency = 1;
		Text = arg2.Title;
		TextWrapped = true;
		TextColor3 = Color3_new_result1_upvr;
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size36;
	})
	setmetatable_result1_upvr.detailsText = createButton
	function createButton(arg1_2, arg2_2, arg3) -- Line 614
		--[[ Upvalues[4]:
			[1]: Create_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
			[3]: var9_upvr (copied, readonly)
			[4]: Color3_new_result1_upvr (copied, readonly)
		]]
		local var116_upvr = Create_upvr("ImageButton")({
			Parent = setmetatable_result1_upvr.detailsFrame;
			Position = UDim2.new(arg1_2, 0, 0.55, 0);
			Size = UDim2.new(arg2_2, 0, 0.29, 0);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png";
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 6, 46, 44);
			SelectionImageObject = var9_upvr;
		})
		local tbl_11 = {
			Position = UDim2.new(0, 0, 0, 0);
			Size = UDim2.new(1, 0, 1, -6);
			BackgroundTransparency = 1;
		}
		tbl_11.Text = arg3
		tbl_11.TextColor3 = Color3_new_result1_upvr
		tbl_11.Font = Enum.Font.SourceSansBold
		tbl_11.FontSize = Enum.FontSize.Size24
		local var118 = Create_upvr("TextLabel")(tbl_11)
		var118.Parent = var116_upvr
		var116_upvr.SelectionGained:connect(function() -- Line 640
			--[[ Upvalues[1]:
				[1]: var116_upvr (readonly)
			]]
			var116_upvr.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
		end)
		var116_upvr.SelectionLost:connect(function() -- Line 643
			--[[ Upvalues[1]:
				[1]: var116_upvr (readonly)
			]]
			var116_upvr.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
		end)
		return var116_upvr, var118
	end
	if arg2.Button1Text and arg2.Button2Text then
		local createButton_result1_3, createButton_result2_3 = createButton(0.07, 0.415, arg2.Button1Text)
		setmetatable_result1_upvr.detailsButton1 = createButton_result1_3
		setmetatable_result1_upvr.detailsButton1Text = createButton_result2_3
		local createButton_result1_2, createButton_result2_2 = createButton(0.511, 0.415, arg2.Button2Text)
		setmetatable_result1_upvr.detailsButton2 = createButton_result1_2
		setmetatable_result1_upvr.detailsButton2Text = createButton_result2_2
		setmetatable_result1_upvr.detailsButton1.MouseButton1Click:connect(function() -- Line 653
			--[[ Upvalues[3]:
				[1]: tbl_4_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: setmetatable_result1_upvr (readonly)
			]]
			tbl_4_upvr(arg2.Callback, arg2.Button1Text)
			setmetatable_result1_upvr:Dismiss()
		end)
		setmetatable_result1_upvr.detailsButton2.MouseButton1Click:connect(function() -- Line 657
			--[[ Upvalues[3]:
				[1]: tbl_4_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: setmetatable_result1_upvr (readonly)
			]]
			tbl_4_upvr(arg2.Callback, arg2.Button2Text)
			setmetatable_result1_upvr:Dismiss()
		end)
	elseif not arg2.button2Text then
		local createButton_result1, createButton_result2 = createButton(0.07, 0.86, arg2.Button1Text or "Dismiss")
		setmetatable_result1_upvr.detailsButton1 = createButton_result1
		setmetatable_result1_upvr.detailsButton1Text = createButton_result2
		setmetatable_result1_upvr.detailsButton1.MouseButton1Click:connect(function() -- Line 664
			--[[ Upvalues[3]:
				[1]: tbl_4_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: setmetatable_result1_upvr (readonly)
			]]
			tbl_4_upvr(arg2.Callback, arg2.Button1Text)
			setmetatable_result1_upvr:Dismiss()
		end)
	end
	table.insert(arg1.notifications, setmetatable_result1_upvr)
	arg1.notificationsDirty = true
	layoutNotificationsGroups_upvr()
	return setmetatable_result1_upvr
end
function tbl_upvr.OnClicked(arg1) -- Line 677
	--[[ Upvalues[1]:
		[1]: layoutNotificationsGroups_upvr (readonly)
	]]
	arg1.group:SwitchTo()
	layoutNotificationsGroups_upvr()
end
function tbl_upvr.Dismiss(arg1) -- Line 685
	arg1.group:RemoveNotification(arg1)
end
module_upvr_3 = {}
local var130_upvw = false
local var131_upvw = 0
RobloxGui:WaitForChild("SendNotificationInfo").Event:connect(function(arg1) -- Line 697
	--[[ Upvalues[5]:
		[1]: var42_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var130_upvw (read and write)
		[4]: var131_upvw (read and write)
		[5]: module_upvr_2 (readonly)
	]]
	local var133
	if var133 then
		var133 = var42_upvr[arg1.GroupName]
	end
	if not var133 then
		if false then
			var133 = var42_upvr.Developer
		else
			return
		end
	end
	tbl_upvr.new(var133, arg1)
	if not var130_upvw then
		var131_upvw += 1
		module_upvr_2.UnreadCountChanged(var131_upvw)
	end
end)
local function onMenuCloseShortcut_upvr(arg1, arg2, arg3) -- Line 716, Named "onMenuCloseShortcut"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		module_upvr_2:SetVisible(false)
	end
end
module_upvr_2.VisibilityStateChanged = Create_upvr("BindableEvent")({
	Name = "VisibilityStateChanged";
})
function module_upvr_2.GetNumberOfPendingNotifications(arg1) -- Line 726
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return #module_upvr_3
end
function module_upvr_2.IsVisible(arg1) -- Line 730
	--[[ Upvalues[1]:
		[1]: var130_upvw (read and write)
	]]
	return var130_upvw
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr_2.SetVisible(arg1, arg2) -- Line 734
	--[[ Upvalues[11]:
		[1]: var130_upvw (read and write)
		[2]: Panel3D_upvr (readonly)
		[3]: var131_upvw (read and write)
		[4]: module_upvr_2 (readonly)
		[5]: any_Get_result1_upvr (readonly)
		[6]: var38_upvw (read and write)
		[7]: any_Get_result1_upvr_2 (readonly)
		[8]: var41_upvw (read and write)
		[9]: ContextActionService_upvr (readonly)
		[10]: onMenuCloseShortcut_upvr (readonly)
		[11]: VRHub_upvr (readonly)
	]]
	if var130_upvw == arg2 then
	else
		var130_upvw = arg2
		Panel3D_upvr.Get("Topbar3D"):SetCanFade(not arg2)
		if arg2 then
			var131_upvw = 0
			module_upvr_2.UnreadCountChanged(var131_upvw)
			any_Get_result1_upvr.localCF = CFrame.new(-1.7079999929999998, 0, 0)
			var38_upvw.zeroCF = any_Get_result1_upvr.localCF
			var38_upvw:AnimateIn(nil)
			any_Get_result1_upvr_2.localCF = CFrame.new(1.138666662, 0, 0)
			var41_upvw.zeroCF = any_Get_result1_upvr_2.localCF
			var41_upvw:AnimateIn(nil)
			any_Get_result1_upvr:SetVisible(true)
			any_Get_result1_upvr_2:SetVisible(true)
			ContextActionService_upvr:BindCoreAction("NotificationsMenuCloseShortcut", onMenuCloseShortcut_upvr, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart)
			VRHub_upvr:FireModuleOpened(module_upvr_2.ModuleName)
		else
			spawn(function() -- Line 766
				--[[ Upvalues[4]:
					[1]: var38_upvw (copied, read and write)
					[2]: any_Get_result1_upvr (copied, readonly)
					[3]: var41_upvw (copied, read and write)
					[4]: any_Get_result1_upvr_2 (copied, readonly)
				]]
				var38_upvw:AnimateOut(function() -- Line 767
					--[[ Upvalues[1]:
						[1]: any_Get_result1_upvr (copied, readonly)
					]]
					any_Get_result1_upvr:SetVisible(false)
				end)
				var41_upvw:AnimateOut(function() -- Line 770
					--[[ Upvalues[1]:
						[1]: any_Get_result1_upvr_2 (copied, readonly)
					]]
					any_Get_result1_upvr_2:SetVisible(false)
				end)
			end)
			ContextActionService_upvr:UnbindCoreAction("NotificationsMenuCloseShortcut")
			VRHub_upvr:FireModuleClosed(module_upvr_2.ModuleName)
		end
		module_upvr_2.VisibilityStateChanged:Fire(arg2)
	end
end
VRHub_upvr.ModuleOpened.Event:connect(function(arg1, arg2, arg3, arg4) -- Line 788
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg1 ~= module_upvr_2.ModuleName then
		module_upvr_2:SetVisible(false)
	end
end)
return module_upvr_2