-- TODO: do a check to see if these commands are available
lang_cmd_map = {
  lua = "lua <<-EOF\n%s\nEOF",
  -- python = "python3 <<-EOF\n%s\nEOF",
  ruby = "ruby <<-EOF\n%s\nEOF",
  bash = "bash <<-EOF\n%s\nEOF",
  sh = "sh <<-EOF\n%s\nEOF",
  scheme = "scheme <<-EOF\n%s\nEOF" --TODO: try to clean up the output
}

function cmd(block)
  local cmd_tmpl = lang_cmd_map[block.lang]
  if cmd_tmpl == nil then
    return ""
  end

  return string.format(cmd_tmpl, block.code)
end

return {
  cmd = cmd
}
