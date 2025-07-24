-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:03
-- Luau version 6, Types version 3
-- Time taken: 0.001099 seconds

local CoreGui = game:GetService("CoreGui")
local CapturesInExperience = require(game:GetService("CorePackages").Workspace.Packages.CapturesInExperience)
local any_createApp_result1 = CapturesInExperience.App.createApp()
local ScreenGui_2 = Instance.new("ScreenGui")
ScreenGui_2.DisplayOrder = CapturesInExperience.Constants.CarouselDisplayOrder
ScreenGui_2.Name = "ScreenshotsCarousel"
ScreenGui_2.ResetOnSpawn = false
ScreenGui_2.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
ScreenGui_2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_2.Parent = CoreGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.DisplayOrder = CapturesInExperience.Constants.CarouselDisplayOrder
ScreenGui.Name = "CaptureManager"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui
local ScreenGui_3 = Instance.new("ScreenGui")
ScreenGui_3.DisplayOrder = CapturesInExperience.Constants.ComposerDisplayOrder
ScreenGui_3.Name = "Composer"
ScreenGui_3.ResetOnSpawn = false
ScreenGui_3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_3.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
ScreenGui_3.ScreenInsets = Enum.ScreenInsets.None
ScreenGui_3.Parent = CoreGui
local ScreenGui_4 = Instance.new("ScreenGui")
ScreenGui_4.DisplayOrder = CapturesInExperience.Constants.OverlayDisplayOrder
ScreenGui_4.Name = CapturesInExperience.Constants.OverlayName
ScreenGui_4.ResetOnSpawn = false
ScreenGui_4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_4.Parent = CoreGui
any_createApp_result1.mountCaptureManager(ScreenGui)
any_createApp_result1.mountCarousel(ScreenGui_2)
any_createApp_result1.mountComposer(ScreenGui_3)
any_createApp_result1.mountCoreUI(CoreGui:WaitForChild("RobloxGui"), require(CoreGui.RobloxGui.Modules.Chrome.Enabled)())
any_createApp_result1.mountCaptureOverlay(ScreenGui_4)
return any_createApp_result1