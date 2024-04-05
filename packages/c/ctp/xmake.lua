package("ctp")
    set_description("CTP sdk")
    set_urls("https://raw.githubusercontent.com/yobome/3rd_party/master/ctp/ctp_$(version).tar.gz")

    add_versions("v6.7.2", "3a31efc376fea376378b3c451e7a610ff73494568e4f8626cfd1782b1179fda0")
    add_versions("v6.7.2_CP", "e7b0068443fbd8e60a6109b0a1132b25d91738663f588dd4f615fb8fe66f048d")

    on_install("linux", function (package)
        os.cp("include", package:installdir())
        os.cp("lib", package:installdir())
    end)

package_end()