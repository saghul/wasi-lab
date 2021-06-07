const std = @import("std");

pub fn build(b: *std.build.Builder) !void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const qjs = b.addExecutable("qjs", null);
    qjs.setTarget(target);
    qjs.setBuildMode(mode);
    qjs.install();
    qjs.linkLibC();

    var flags = std.ArrayList([]const u8).init(b.allocator);
    defer flags.deinit();
    try flags.appendSlice(&.{
        "-funsigned-char",
        "-D_GNU_SOURCE",
        "-DCONFIG_VERSION=\"2019-07-09\"",
    });

    if (target.getCpuArch() == .wasm32 and target.getOsTag() == .wasi) {
        qjs.linkSystemLibrary("wasi-emulated-process-clocks");
        qjs.linkSystemLibrary("wasi-emulated-signal");
        try flags.append("-D_WASI_EMULATED_SIGNAL");
    }

    qjs.addCSourceFiles(&.{
        "src/cutils.c",
        "src/libregexp.c",
        "src/libunicode.c",
        "src/qjs.c",
        "src/quickjs-libc.c",
        "src/quickjs.c",
        "src/repl.c",
    }, flags.items);
}
