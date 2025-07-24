-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:01
-- Luau version 6, Types version 3
-- Time taken: 0.003680 seconds

return function() -- Line 1, Named "startDebug"
	local TextChatService = game:GetService("TextChatService")
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "ExperienceChatDebug"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.DisplayOrder = -1
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local var3_upvw = 7
	local tbl_upvr = {{
		vertical = Enum.VerticalAlignment.Top;
		horizontal = Enum.HorizontalAlignment.Left;
	}, {
		vertical = Enum.VerticalAlignment.Top;
		horizontal = Enum.HorizontalAlignment.Center;
	}, {
		vertical = Enum.VerticalAlignment.Top;
		horizontal = Enum.HorizontalAlignment.Right;
	}, {
		vertical = Enum.VerticalAlignment.Center;
		horizontal = Enum.HorizontalAlignment.Left;
	}, {
		vertical = Enum.VerticalAlignment.Center;
		horizontal = Enum.HorizontalAlignment.Center;
	}, {
		vertical = Enum.VerticalAlignment.Center;
		horizontal = Enum.HorizontalAlignment.Right;
	}, {
		vertical = Enum.VerticalAlignment.Bottom;
		horizontal = Enum.HorizontalAlignment.Left;
	}, {
		vertical = Enum.VerticalAlignment.Bottom;
		horizontal = Enum.HorizontalAlignment.Center;
	}, {
		vertical = Enum.VerticalAlignment.Bottom;
		horizontal = Enum.HorizontalAlignment.Right;
	}}
	local tbl_upvw = {}
	local UIListLayout_upvr = Instance.new("UIListLayout")
	UIListLayout_upvr.Parent = ScreenGui
	local function _() -- Line 29, Named "updateContainerLayout"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: var3_upvw (read and write)
			[3]: UIListLayout_upvr (readonly)
		]]
		local var16 = tbl_upvr[var3_upvw]
		UIListLayout_upvr.VerticalAlignment = var16.vertical
		UIListLayout_upvr.HorizontalAlignment = var16.horizontal
	end
	local var17 = tbl_upvr[var3_upvw]
	UIListLayout_upvr.VerticalAlignment = var17.vertical
	UIListLayout_upvr.HorizontalAlignment = var17.horizontal
	local ImageButton_upvr = Instance.new("ImageButton")
	ImageButton_upvr.AutomaticSize = Enum.AutomaticSize.XY
	ImageButton_upvr.Size = UDim2.new(0, 200, 0, 20)
	ImageButton_upvr.BackgroundTransparency = 0.3
	ImageButton_upvr.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	ImageButton_upvr.Parent = ScreenGui
	ImageButton_upvr.Activated:Connect(function() -- Line 43
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: tbl_upvr (readonly)
			[3]: UIListLayout_upvr (readonly)
		]]
		var3_upvw += 1
		if #tbl_upvr < var3_upvw then
			var3_upvw = 1
		end
		local var20 = tbl_upvr[var3_upvw]
		UIListLayout_upvr.VerticalAlignment = var20.vertical
		UIListLayout_upvr.HorizontalAlignment = var20.horizontal
	end)
	local function clearEntries() -- Line 52
		--[[ Upvalues[1]:
			[1]: tbl_upvw (read and write)
		]]
		for _, v in tbl_upvw do
			v:Destroy()
		end
		tbl_upvw = {}
	end
	ImageButton_upvr.MouseButton2Click:Connect(clearEntries)
	ImageButton_upvr.TouchLongPress:Connect(clearEntries)
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.Parent = ImageButton_upvr
	local function addEntryToContainer_upvr(arg1, arg2, arg3) -- Line 65, Named "addEntryToContainer"
		--[[ Upvalues[2]:
			[1]: tbl_upvw (read and write)
			[2]: ImageButton_upvr (readonly)
		]]
		if 10 < #tbl_upvw then
			local popped_2 = table.remove(tbl_upvw, 1)
			if popped_2 then
				popped_2:Destroy()
			end
		end
		local TextLabel = Instance.new("TextLabel")
		TextLabel.AutomaticSize = Enum.AutomaticSize.X
		TextLabel.BackgroundTransparency = arg3
		TextLabel.BackgroundColor3 = arg2
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.Text = arg1
		TextLabel.RichText = true
		TextLabel.TextTruncate = Enum.TextTruncate.AtEnd
		TextLabel.TextYAlignment = Enum.TextYAlignment.Top
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextSize = 16
		TextLabel.FontFace = Font.fromEnum(Enum.Font.RobotoMono)
		TextLabel.Size = UDim2.new(0, 0, 0, 18)
		TextLabel.Parent = ImageButton_upvr
		table.insert(tbl_upvw, TextLabel)
	end
	local utf8_char_result1_upvr_2 = utf8.char(128227)
	local utf8_char_result1_upvr = utf8.char(128229)
	local function formatEntry(arg1) -- Line 95
		--[[ Upvalues[3]:
			[1]: utf8_char_result1_upvr_2 (readonly)
			[2]: utf8_char_result1_upvr (readonly)
			[3]: addEntryToContainer_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var30
		if arg1.Status == Enum.TextChatMessageStatus.Sending then
			var30 = `{utf8_char_result1_upvr_2} Sent`
		else
			var30 = `{utf8_char_result1_upvr} Rec.`
		end
		if arg1.TextChannel then
		else
		end
		local var31
		if arg1.Status ~= Enum.TextChatMessageStatus.Success and arg1.Status ~= Enum.TextChatMessageStatus.Sending then
			var31 = true
		else
			var31 = false
		end
		if var31 then
		else
		end
		if var31 then
		else
		end
		if var31 then
		else
		end
		local var32
		if arg1.TextChannel and arg1.TextChannel.DirectChatRequester then
			var32 = " <font color='#00E344'>(Direct)</font>"
		else
			var32 = ""
		end
		addEntryToContainer_upvr(`{var30} [{"Unknown"}{var32}] {arg1.Text} {""}`, Color3.fromRGB(32, 32, 32), 1)
	end
	TextChatService.MessageReceived:Connect(formatEntry)
	TextChatService.SendingMessage:Connect(formatEntry)
	ScreenGui.Parent = game:GetService("CoreGui")
end