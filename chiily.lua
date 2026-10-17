-- =========================================================================
-- ⚡ CHILLI V5 - STEAL AN EGG 🥚 (NO KEY / DIRECT LAUNCH)
-- =========================================================================
local TargetScriptUrl = "https://luauforge-antiraw.netlify.app/raw/b2GaCbtITNxIA6Qayyauq1a"

-- Xóa bỏ các bảng key / UI rác cũ nếu có
pcall(function()
    local CoreGui = game:GetService("CoreGui")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local oldUIs = {"ChilliV5_GetKeyUI", "ChilliV5_ToastUI", "ChilliV5_InputBlocker"}
    for _, uiName in ipairs(oldUIs) do
        if CoreGui:FindFirstChild(uiName) then CoreGui[uiName]:Destroy() end
        local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
        if playerGui and playerGui:FindFirstChild(uiName) then playerGui[uiName]:Destroy() end
    end
end)

-- Kích hoạt biến môi trường vượt key
getgenv().ChilliV5_Active = true
getgenv().KeyAuthenticated = true

-- Tải trực tiếp script gốc
task.spawn(function()
    pcall(function()
        print("⚡ [Chilli V5]: Đang tải trực tiếp không cần key...")
        loadstring(game:HttpGet(TargetScriptUrl))()
    end)
end)
