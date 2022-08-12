package = 'uikit'
version = 'scm-1'
source  = {
    url = 'git+https://github.com/kuznetsovin/tarantool-modulekit',
    branch = 'cartridge-uikit',
}

dependencies = {
    'lua >= 5.1',
    'frontend-core ~> 8',
}

build = {
    type = 'make',
    build_target = 'all',
    install = {
        lua = {
            ['uikit'] = 'uikit.lua',
        }
    },
    install_variables = {
        LUADIR="$(LUADIR)",
    },
}
