local deno_version = "2.8.2"
local lazygit_version = "0.60.0"

local function is_ubuntu()
    local os_release = io.open("/etc/os-release", "r")
    if not os_release then
        return false
    end
    local content = os_release:read("*a")
    os_release:close()
    return content:match("ID=ubuntu") ~= nil
end

if vim.fn.executable("lazygit") == 0 then
    if vim.fn.has("win32") == 1 then
        vim.fn.system({ "scoop", "install", "lazygit@" .. lazygit_version })
    elseif is_ubuntu() then
        vim.fn.system({ "sudo", "apt", "install", "-y", "lazygit=" .. lazygit_version })
    end
end

if vim.fn.executable("deno") == 0 then
    vim.fn.system({ "npm", "i", "-g", "deno@" .. deno_version })
end
