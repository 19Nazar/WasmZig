pub extern "env" fn s_read(u64, u64, u64)  u64;
pub extern "env" fn write(u64, u64, u64, u64, u64) u64;
pub extern "env" fn has_key(u64, u64) u64;

pub extern "env" fn read(u64, u64) void;

pub extern "env" fn return(u64, u64)  void;
pub extern "env" fn log_utf8(u64, u64)  void;


pub fn log(str: []const u8) void {
  const ptr = @as(u64, @ptrToInt(str.ptr));
  log_utf8(str.len, ptr);
}