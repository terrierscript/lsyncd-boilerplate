-- variables
local conf = dofile("conf.lua")

local homeDir = os.getenv("HOME")
local target = conf.user.."@".. conf.host..":".. conf.dest

-- lsyncd
settings{
  logfile     = "/tmp/lsyncd.log",
  statusFile  = "/tmp/lsyncd.status",
  insist      = true,
  nodaemon    = true,
  delay       = 0,
  statusInterval  = 10,
  maxProcesses    = 2,
}

sync{
  default.rsync,
  delete = false,
  source = conf.source,
  target = target,
  exclude = { ".DS_Store", ".sass-cache/**/*" },
  rsync = {
    binary = "/usr/local/bin/rsync",
    archive = true,
    compress = true,
    rsh = "/usr/bin/ssh -i "..homeDir.."/.ssh/id_rsa"
  }
}