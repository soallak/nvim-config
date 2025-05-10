local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    vhdl = { "vsg" },
    vhd = { "vsg" },
  },
  -- Set this to change the default values when calling conform.format()
  -- This will also affect the default values for format_on_save/format_after_save
  default_format_opts = {
    lsp_format = "fallback",
  },
  -- If this is set, Conform will run the formatter on save.
  -- It will pass the table to conform.format().
  -- This can also be a function that returns the table.
  format_on_save = {
    -- I recommend these options. See :help conform.format for details.
    lsp_format = "fallback",
    timeout_ms = 500,
  },
  -- If this is set, Conform will run the formatter asynchronously after save.
  -- It will pass the table to conform.format().
  -- This can also be a function that returns the table.
  format_after_save = {
    lsp_format = "fallback",
  },
  -- Set the log level. Use `:ConformInfo` to see the location of the log file.
  log_level = vim.log.levels.INFO,
  -- Conform will notify you when a formatter errors
  notify_on_error = true,
  -- Conform will notify you when no formatters are available for the buffer
  notify_no_formatters = true,
  -- Custom formatters and overrides for built-in formatters
  formatters = {
    vsg = {
      -- Set to false to disable merging the config with the base definition
      inherit = true,
      -- A function that calculates the directory to run the command in
      cwd = require("conform.util").root_file { ".vsg.yaml" },
      -- When cwd is not found, don't run the formatter (default false)
      require_cwd = true,
      -- When inherit = true, add these additional arguments to the beginning of the command.
      -- This can also be a function, like args
      prepend_args = { "--style", "indent_only", "-c", ".vsg.yaml" },
    },
  },
}

return options
