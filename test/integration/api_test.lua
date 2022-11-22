local t = require('luatest')
local g = t.group('integration_api')

local helper = require('test.helper')
local cluster = helper.cluster

g.before_all = function()
    g.cluster = helper.cluster
    g.cluster:start()
end

g.after_all = function()
    helper.stop_cluster(g.cluster)
end

g.before_each = function()
    -- helper.truncate_space_on_cluster(g.cluster, 'Set your space name here')
end

g.test_sample = function()
    local api = cluster:server("api").net_box
    local r, err = api:call("tcalc.calc_sum", {1, 3})
    t.assert_equals(err, nil)
    t.assert_equals(r, {4})
end
