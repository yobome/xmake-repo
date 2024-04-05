package("stlog")
    set_description("The stlog package")
    add_deps("fmt 10.1.1")

    add_urls("git@github.com:yobome/stlog.git")
    add_versions("v1.0.0", "ad2a56e8618146da1702d220f2e5fa447cfc5838")
    add_versions("v1.0.1", "1d32579a642af7654f3fe2a3473f7e0d07a055dc")

    if is_plat("linux") then
        add_syslinks("pthread")
    end

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
