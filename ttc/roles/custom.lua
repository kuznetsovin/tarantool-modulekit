local cartridge = require('cartridge')

local function init(opts) -- luacheck: no unused args
    box.schema.func.create('tcalc.calc_sum', {language = 'C', if_not_exists = true})

    return true
end

local function stop()
    return true
end

local function validate_config(conf_new, conf_old) -- luacheck: no unused args
    return true
end

local function apply_config(conf, opts) -- luacheck: no unused args
    -- if opts.is_master then
    -- end

    return true
end

return {
    role_name = 'app.roles.custom',
    init = init,
    stop = stop,
    validate_config = validate_config,
    apply_config = apply_config,
}
