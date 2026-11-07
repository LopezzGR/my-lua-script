local TARGET = "Kzoyz x Opus"
local REPLACEMENT = "Lopezz x GR"

-- Jalankan script asli
loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Koziz/GrowBlox/refs/heads/main/GB"
))()

-- Fungsi untuk mengganti teks
local function replaceText(obj)
    if obj:IsA("TextLabel")
        or obj:IsA("TextButton")
        or obj:IsA("TextBox") then

        if obj.Text == TARGET then
            obj.Text = REPLACEMENT

        elseif string.find(obj.Text, TARGET, 1, true) then
            obj.Text = string.gsub(
                obj.Text,
                TARGET,
                REPLACEMENT
            )
        end
    end
end

-- Periksa GUI yang sudah ada
for _, obj in ipairs(game:GetDescendants()) do
    replaceText(obj)
end

-- Periksa GUI yang dibuat kemudian
game.DescendantAdded:Connect(function(obj)
    task.wait()
    replaceText(obj)
end)
