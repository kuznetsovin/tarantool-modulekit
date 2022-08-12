package.loaded['uikit.bundle'] = nil

local bundle = require('uikit.bundle')
local front = require('frontend-core')

local VERSION = 'scm-1'
local NAMESPACE = 'uikit'

local function init()
    if bundle and front then
        front.add(NAMESPACE, bundle)
    end
end

return {
    init = init,
    VERSION = VERSION,
}
