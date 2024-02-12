local M = { --TODO: import this
    config = {
        servers = {
            ansiblels = {
                pkg = "ansible-language-server",
            },
            arduino_language_server = {
                pkg = "arduino_language_server",
            },
            asm_lsp = {
                pkg = "asm-lsp",
            },
            bashls = {
                pkg = "nodePackages.bash-language-server",
            },
            beancount = {
                pkg = "beancount-language-server",
            },
            bufls = {
                pkg = "buf-language-server",
            },
            ccls = {
                pkg = "ccls",
            },
            clangd = {
                pkg = "clang-tools",
            },
            clojure = {
                pkg = "clojure-lsp",
            },
            cmake = {
                pkg = "cmake-language-server",
            },
            crystalline = {
                pkg = "crystalline",
            },
            csharp_ls = {
                pkg = "csharp-ls",
            },
            dagger = {
                pkg = "cuelsp",
            },
            dhall_lsp_server = {
                pkg = "dhall-lsp-server",
            },
            diagnosticls = {
                pkg = "nodePackages.diagnostic-languageserver",
            },
            docker_compose_language_service = {
                pkg = "docker-compose-language-service",
            },
            dockerls = {
                pkg = "docker-language-server-nodejs",
            },
            dotls = {
                pkg = "dot-language-server",
            },
            efm = {
                pkg = "efm-langserver",
            },
            elixirls = {
                pkg = "elixir-ls",
            },
            elmls = {
                pkg = "elmPackages.elm-language-server",
            },
            emmet_language_server = {
                pkg = "emmet-language-server",
            },
            emmet_ls = {
                pkg = "emmet-ls",
            },
            erlangls = {
                pkg = "erlang-ls",
            },
            fennel_ls = {
                pkg = "fennel-ls",
            },
            fortls = {
                pkg = "fortls",
            },
            glslls = {
                pkg = "glslls",
            },
            golangci_lint_ls = {
                pkg = "gloangci-lint-langserver",
            },
            gopls = {
                pkg = "gopls",
            },
            grammarly = {
                pkg = "nodePackages.grammarly-languageserver",
            },
            graphql = {
                pkg = "nodePackages.graphql-language-service-cli",
            },
            helm_ls = {
                pkg = "helm-ls",
            },
            hls = {
                pkg = "haskell-language-server",
            },
            htmx = {
                pkg = "htmx-lsp",
            },
            intelephense = {
                pkg = "nodePackages.intelephense",
            },
            java_language_server = {
                pkg = "java-language-server",
            },
            jdtls = {
                pkg = "jdt-language-server",
            },
            jedi_language_server = {
                pkg = "python312Packages.jedi-language-server",
            },
            jqls = {
                pkg = "jq-lsp",
            },
            jsonnet_ls = {
                pkg = "jsonnet-language-server",
            },
            kotlin_language_server = {
                pkg = "kotlin-language-server",
            },
            lemminx = {
                pkg = "lemminx",
            },
            ltex = {
                pkg = "ltex-ls",
            },
            lua_ls = {
                pkg = "lua-language-server",
            },
            marksman = {
                pkg = "marksman",
            },
            matlab_ls = {
                pkg = "matlab-language-server",
            },
            metals = {
                pkg = "metals",
            },
            millet = {
                pkg = "millet",
            },
            neocmake = {
                pkg = "neocmakelsp",
            },
            nickel_ls = {
                pkg = "nls",
            },
            nil_ls = {
                pkg = "nil",
            },
            nimls = {
                pkg = "nimlsp",
            },
            nixd = {
                pkg = "nixd",
            },
            ocamllsp = {
                pkg = "ocamllsp",
            },
            ols = {
                pkg = "ols",
            },
            openscad_lsp = {
                pkg = "openscad-lsp",
            },
            perlnavigator = {
                pkg = "perlnavigator",
            },
            phan = {
                pkg = "php83Packages.phan",
            },
            phpactor = {
                pkg = "phpactor",
            },
            postgres_lsp = {
                pkg = "postgres-lsp",
            },
            purescriptls = {
                pkg = "nodePackages.purescript-language-server",
            },
            pylsp = {
                pkg = "python312Packages.python-lsp-server",
            },
            pylyzer = {
                pkg = "pylyzer",
            },
            pyright = {
                pkg = "nodePackages.pyright",
            },
            regols = {
                pkg = "regols",
            },
            rnix = {
                pkg = "rnix-lsp",
            },
            ruff_lsp = {
                pkg = "python311Packages.ruff-lsp",
            },
            rust_analyzer = {
                pkg = "rust-analyzer",
            },
            scry = {
                pkg = "scry",
            },
            slint_lsp = {
                pkg = "slint-lsp",
            },
            solargraph = {
                pkg = "rubyPackages_3_2.solargraph",
            },
            sourcekit = {
                pkg = "sourcekit-lsp",
            },
            sqls = {
                pkg = "sqls",
            },
            statix = {
                pkg = "statix",
            },
            svelte = {
                pkg = "nodePackages.scelte-language-server",
            },
            svls = {
                pkg = "svls",
            },
            teal_ls = {
                pkg = "luajitPackages.teal-language-server",
            },
            terraform_ls = {
                pkg = "terraform-ls",
            },
            terraform_lsp = {
                pkg = "terraform-lsp",
            },
            tsserver = {
                pkg = "nodePackages.typescript-language-server",
            },
            typos_lsp = {
                pkg = "typos",
            },
            typst_lsp = {
                pkg = "typst-lsp",
            },
            vala_ls = {
                pkg = "vala-language-server",
            },
            verible = {
                pkg = "verible",
            },
            vhdl_ls = {
                pkg = "vhdl-ls",
            },
            vimls = {
                pkg = "nodePackages.vim-language-server",
            },
            volar = {
                pkg = "nodePackages.volar",
            },
            vuels = {
                pkg = "nodePackages.vls",
            },
            yamlls = {
                pkg = "yaml-language-server",
            },
            zls = {
                pkg = "zls",
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
    if M.missing("nix") then
        return
    end
    if M.check_config(config) then
        M.config = vim.tbl_deep_extend("force", M.config, config)
    else
        vim.notify(
            "shelllsp failed to load user configuration",
            vim.log.levels.WARN
        )
    end
    local ok, err = pcall(function()
        local util = require("lspconfig.util")
        util.on_setup = util.add_hook_before(util.on_setup, function(cfg, user_cfg)
            local server = M.config.servers[cfg.name]
            if not server then
                return
            end
            local cmd = cfg.cmd
            if M.missing(cmd[1]) then
                local new_cmd = {
                    "nix",
                    "--extra-experimental-features",
                    "nix-command",
                    "run",
                    "nixpkgs#" .. server.pkg, --TODO: Maybe allow custom sources
                }
                if server.cmd then
                    cmd = server.cmd
                end
                for _, val in ipairs(cmd) do
                    table.insert(new_cmd, val)
                end
                cfg.cmd = new_cmd
            else
            end
        end)
    end)
    if not ok then
        vim.notify(err, vim.log.levels.ERROR)
    end
end

function M.missing(pkg) --WARN: smells non cross platform
    return os.execute("command -v " .. pkg .. " >/dev/null 2>&1") ~= 0
end

return M
