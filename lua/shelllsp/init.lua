local M = {
    config = {
        servers = {
            bashls = {
                pkgs = "nodePackages.bash-language-server",
            },
            clangd = {
                pkgs = "clang-tools",
            },
        }
    }
}

function M.check_config(_)
    local err
    if err then
        vim.notify(err, vim.log.levels.ERROR)
    end
    return not err
end

function M.setup(config)
    if M.missing("nix-shell") then
        vim.notify(
            "nix-shell is unavailable, skipping shelllsp init.",
            vim.log.levels.WARN
        )
        return
    end
    if M.check_config(config) then
        M.config = vim.tbl_deep_extend("force", M.config, config)
    else
        vim.notify(
            "shelllsp failed to load user configuration, using the to default",
            vim.log.levels.WARN
        )
    end
    local lspconfig = require("lspconfig")
    local util = lspconfig.util
    util.on_setup = util.add_hook_after(util.on_setup, M.wrap_cmd)
end

function M.wrap_cmd(new_cfg)
    local cmd = new_cfg.cmd
    if M.missing(cmd[1]) then
        local server = M.config.servers[new_cfg.name] or {}
        local new_cmd = { "nix-shell", "-p" }
        local pkgs = server.pkgs or cmd[1]
        if type(pkgs) == "table" then
            for _, pkg in ipairs(pkgs) do
                table.insert(new_cmd, pkg)
            end
        else
            table.insert(new_cmd, pkgs)
        end
        table.insert(new_cmd, "--command")
        if server.cmd then
            cmd = server.cmd
        end
        local exec_str = '"'
        for index, val in ipairs(cmd) do
            exec_str = exec_str .. val
            if index ~= #cmd then
                exec_str = exec_str .. ' '
            end
        end
        exec_str = exec_str .. '"'
        table.insert(new_cmd, exec_str)
        new_cfg.cmd = new_cmd
    else
        vim.notify(new_cfg.name .. "is available, skipping nix-shell")
    end
end

function M.missing(pkg)
    return os.execute("command -v " .. pkg .. " >/dev/null 2>&1") ~= 0
end

return M
