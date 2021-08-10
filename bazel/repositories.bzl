load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive"
)

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def repositories():
    _maybe(
#         native.http_archive,
        http_archive,
        name = "com_github_gflags_gflags",
        sha256 = "6e16c8bc91b1310a44f3965e616383dbda48f83e8c1eaa2370a215057b00cabe",
        strip_prefix = "gflags-77592648e3f3be87d6c7123eb81cbad75f9aef5a",
        urls = [
            "https://mirror.bazel.build/github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
            "https://github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
        ],
    )

    _maybe(
#         native.http_archive,
        http_archive,
        name = "com_google_glog",
        sha256 = "dfc074b41a5b86fc5dda4f0e2e2d6cc5b21f798c9fcc8ed5fea9c8f7c4613be6",
        strip_prefix = "glog-dd2b93d761a19860190cb3fa92066c8031e912e3",
        urls = [
            "https://mirror.bazel.build/github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
            "https://github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
        ],
    )

    _maybe(
#         native.http_archive,
	http_archive,
        name = "com_google_googletest",
        sha256 = "c18f281fd6621bb264570b99860a0241939b4a251c9b1af709b811d33bc63af8",
        strip_prefix = "googletest-e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d",
        urls = [
            "https://mirror.bazel.build/github.com/google/googletest/archive/e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d.tar.gz",
            "https://github.com/google/googletest/archive/e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d.tar.gz",
        ],
    )

    _maybe(
#         native.http_archive,
        http_archive,
        name = "com_github_cschuet_crc32c",
	sha256 = "81adcc96018fe226ae9b32eba74ffea266409891f220ad85fdd043d80edae598",
        strip_prefix = "crc32c-858907d2ed420b0738941df751c85a7c7588a7b6",
        urls = [
            "https://github.com/cschuet/crc32c/archive/858907d2ed420b0738941df751c85a7c7588a7b6.tar.gz",
        ],
    )

    _maybe(
#         native.http_archive,
	http_archive,
        name = "com_github_cschuet_snappy",
	sha256 = "a62d0fa46f3efb3cec7779d95bbf3320195d2f106d63db5a029eeebf0e7ec67f",
        strip_prefix = "snappy-7b7f8fc8e162bbf24ad31fa046d995703179a3be",
        urls = [
            "https://github.com/cschuet/snappy/archive/7b7f8fc8e162bbf24ad31fa046d995703179a3be.tar.gz",
        ],
    )

    _maybe(
#         native.new_http_archive,
	http_archive,
	name = "com_github_google_leveldb",
	build_file = "@com_github_cschuet_leveldb//bazel/third_party/leveldb:leveldb.BUILD",
	strip_prefix = "leveldb-a7dc502e9f11c2e5c911ba45b999676c43eaa51f",
	urls = [
	    "https://github.com/google/leveldb/archive/a7dc502e9f11c2e5c911ba45b999676c43eaa51f.tar.gz",
	],
    )
    
