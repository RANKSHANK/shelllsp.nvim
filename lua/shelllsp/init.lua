local M = {
    config = {
        servers = {
            ansiblels = {
                pkgs = "ansible-language-server",
            },
            arduino_language_server = {
                pkgs = "arduino_language_server",
            },
            asm_lsp = {
                pkgs = "asm-lsp",
            },
            bashls = {
                pkgs = "nodePackages.bash-language-server",
            },
            beancount = {
                pkgs = "beancount-language-server",
            },
            bufls = {
                pkgs = "buf-language-server",
            },
            ccls = {
                pkgs = "ccls",
            },
            clangd = {
                pkgs = "clang-tools",
            },
            clojure = {
                pkgs = "clojure-lsp",
            },
            cmake = {
                pkgs = "cmake-language-server",
            },
            crystalline = {
                pkgs = "crystalline",
            },
            csharp_ls = {
                pkgs = "csharp-ls",
            },
            dagger = {
                pkgs = "cuelsp",
            },
            dhall_lsp_server = {
                pkgs = "dhall-lsp-server",
            },
            diagnosticls = {
                pkgs = "nodePackages.diagnostic-languageserver",
            },
            docker_compose_language_service = {
                pkgs = "docker-compose-language-service",
            },
            dockerls = {
                pkgs = "docker-language-server-nodejs",
            },
            dotls = {
                pkgs = "dot-language-server",
            },
            efm = {
                pkgs = "efm-langserver",
            },
            elixirls = {
                pkgs = "elixir-ls",
            },
            elmls = {
                pkgs = "elmPackages.elm-language-server",
            },
            emmet_language_server = {
                pkgs = "emmet-language-server",
            },
            emmet_ls = {
                pkgs = "emmet-ls",
            },
            erlangls = {
                pkgs = "erlang-ls",
            },
            fennel_ls = {
                pkgs = "fennel-ls",
            },
            fortls = {
                pkgs = "fortls",
            },
            glslls = {
                pkgs = "glslls",
            },
            golangci_lint_ls = {
                pkgs = "gloangci-lint-langserver",
            },
            gopls = {
                pkgs = "gopls",
            },
            grammarly = {
                pkgs = "nodePackages.grammarly-languageserver",
            },
            graphql = {
                pkgs = "nodePackages.graphql-language-service-cli",
            },
            helm_ls = {
                pkgs = "helm-ls",
            },
            hls = {
                pkgs = "haskell-language-server",
            },
            htmx = {
                pkgs = "htmx-lsp",
            },
            intelephense = {
                pkgs = "nodePackages.intelephense",
            },
            java_language_server = {
                pkgs = "java-language-server",
            },
            jdtls = {
                pkgs = "jdt-language-server",
            },
            jedi_language_server = {
                pkgs = "python312Packages.jedi-language-server",
            },
            jqls = {
                pkgs = "jq-lsp",
            },
            jsonnet_ls = {
                pkgs = "jsonnet-language-server",
            },
            kotlin_language_server = {
                pkgs = "kotlin-language-server",
            },
            lemminx = {
                pkgs = "lemminx",
            },
            ltex = {
                pkgs = "ltex-ls",
            },
            lua_ls = {
                pkgs = "lua-language-server",
            },
            marksman = {
                pkgs = "marksman",
            },
            matlab_ls = {
                pkgs = "matlab-language-server",
            },
            metals = {
                pkgs = "metals",
            },
            millet = {
                pkgs = "millet",
            },
            neocmake = {
                pkgs = "neocmakelsp",
            },
            nickel_ls = {
                pkgs = "nls",
            },
            nil_ls = {
                pkgs = "nil",
            },
            nimls = {
                pkgs = "nimlsp",
            },
            nixd = {
                pkgs = "nixd",
            },
            ocamllsp = {
                pkgs = "ocamllsp",
            },
            ols = {
                pkgs = "ols",
            },
            openscad_lsp = {
                pkgs = "openscad-lsp",
            },
            perlnavigator = {
                pkgs = "perlnavigator",
            },
            phan = {
                pkgs = "php83Packages.phan",
            },
            phpactor = {
                pkgs = "phpactor",
            },
            postgres_lsp = {
                pkgs = "postgres-lsp",
            },
            purescriptls = {
                pkgs = "nodePackages.purescript-language-server",
            },
            pylsp = {
                pkgs = "python312Packages.python-lsp-server",
            },
            pylyzer = {
                pkgs = "pylyzer",
            },
            pyright = {
                pkgs = "nodePackages.pyright",
            },
            regols = {
                pkgs = "regols",
            },
            rnix = {
                pkgs = "rnix-lsp",
            },
            ruff_lsp = {
                pkgs = "python311Packages.ruff-lsp",
            },
            rust_analyzer = {
                pkgs = "rust-analyzer",
            },
            scry = {
                pkgs = "scry",
            },
            slint_lsp = {
                pkgs = "slint-lsp",
            },
            solargraph = {
                pkgs = "rubyPackages_3_2.solargraph",
            },
            sourcekit = {
                pkgs = "sourcekit-lsp",
            },
            sqls = {
                pkgs = "sqls",
            },
            statix = {
                pkgs = "statix",
            },
            svelte = {
                pkgs = "nodePackages.scelte-language-server",
            },
            svls = {
                pkgs = "svls",
            },
            teal_ls = {
                pkgs = "luajitPackages.teal-language-server",
            },
            terraform_ls = {
                pkgs = "terraform-ls",
            }
            terraform_lsp = {
                pkgs = "terraform-lsp",
            },
            tsserver = {
                pkgs = "nodePackages.typescript-language-server",
            },
            typos_lsp = {
                pkgs = "typos",
            },
            typst_lsp = {
                pkgs = "typst-lsp",
            },
            vala_ls = {
                pkgs = "vala-language-server",
            },
            verible = {
                pkgs = "verible",
            },
            vhdl_ls = {
                pkgs = "vhdl-ls",
            },
            vimls = {
                pkgs = "nodePackages.vim-language-server",
            },
            volar = {
                pkgs = "nodePackages.volar",
            },
            vuels = {
                pkgs = "nodePackages.vls",
            },
            yamlls = {
                pkgs = "yaml-language-server",
            },
            zls = {
                pkgs = "zls",
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
        vim.notify(new_cfg.name .. " is available, skipping nix-shell")
    end
end

function M.missing(pkg)
    return os.execute("command -v " .. pkg .. " >/dev/null 2>&1") ~= 0
end

return M
