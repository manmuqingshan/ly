const build_options = @import("build_options");
const enums = @import("../enums.zig");

const Animation = enums.Animation;
const Input = enums.Input;
const ViMode = enums.ViMode;
const Bigclock = enums.Bigclock;

animation: Animation = .none,
animation_timeout_sec: u12 = 0,
asterisk: ?u8 = '*',
auth_fails: u64 = 10,
bg: u32 = 0x00000000,
bigclock: Bigclock = .none,
blank_box: bool = true,
border_fg: u32 = 0x00FFFFFF,
box_title: ?[]const u8 = null,
brightness_down_cmd: [:0]const u8 = build_options.prefix_directory ++ "/bin/brightnessctl -q s 10%-",
brightness_down_key: ?[]const u8 = "F5",
brightness_up_cmd: [:0]const u8 = build_options.prefix_directory ++ "/bin/brightnessctl -q s +10%",
brightness_up_key: ?[]const u8 = "F6",
clear_password: bool = false,
clock: ?[:0]const u8 = null,
cmatrix_fg: u32 = 0x0000FF00,
cmatrix_min_codepoint: u16 = 0x21,
cmatrix_max_codepoint: u16 = 0x7B,
colormix_col1: u32 = 0x00FF0000,
colormix_col2: u32 = 0x000000FF,
colormix_col3: u32 = 0x20000000,
console_dev: []const u8 = "/dev/console",
default_input: Input = .login,
error_bg: u32 = 0x00000000,
error_fg: u32 = 0x01FF0000,
fg: u32 = 0x00FFFFFF,
hide_borders: bool = false,
hide_key_hints: bool = false,
initial_info_text: ?[]const u8 = null,
input_len: u8 = 34,
lang: []const u8 = "en",
load: bool = true,
login_cmd: ?[]const u8 = null,
logout_cmd: ?[]const u8 = null,
margin_box_h: u8 = 2,
margin_box_v: u8 = 1,
min_refresh_delta: u16 = 5,
numlock: bool = false,
path: ?[:0]const u8 = "/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin",
restart_cmd: []const u8 = "/sbin/shutdown -r now",
restart_key: []const u8 = "F2",
save: bool = true,
service_name: [:0]const u8 = "ly",
session_log: []const u8 = "ly-session.log",
setup_cmd: []const u8 = build_options.config_directory ++ "/ly/setup.sh",
shutdown_cmd: []const u8 = "/sbin/shutdown -a now",
shutdown_key: []const u8 = "F1",
sleep_cmd: ?[]const u8 = null,
sleep_key: []const u8 = "F3",
text_in_center: bool = false,
tty: u8 = build_options.tty,
vi_default_mode: ViMode = .normal,
vi_mode: bool = false,
waylandsessions: []const u8 = build_options.prefix_directory ++ "/share/wayland-sessions",
x_cmd: []const u8 = build_options.prefix_directory ++ "/bin/X",
xauth_cmd: []const u8 = build_options.prefix_directory ++ "/bin/xauth",
xinitrc: ?[]const u8 = "~/.xinitrc",
xsessions: []const u8 = build_options.prefix_directory ++ "/share/xsessions",
