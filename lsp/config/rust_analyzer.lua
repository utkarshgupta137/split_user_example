return {
  settings = {
    ["rust-analyzer"] = {
      assist = {
        emitMustUse = true,
      },
      cargo = {
        features = "all",
        extraArgs = {
          "--profile",
          "rust-analyzer",
        },
        extraEnv = {
          CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev",
        },
      },
      check = {
        command = "cranky",
        extraArgs = {
          "--",
          "-Wclippy::cargo",
          "-Aclippy::cargo_common_metadata",
        },
      },
      diagnostics = {
        disabled = {
          "inactive-code",
          "unresolved-import",
        },
        experimental = {
          enable = true,
        },
      },
      files = {
        watcher = "server",
      },
      hover = {
        actions = {
          references = {
            enable = true,
          },
        },
      },
      imports = {
        granularity = {
          enforce = true,
          group = "module",
        },
        prefix = "self",
      },
      inlayHints = {
        bindingModeHints = {
          enable = true,
        },
        closureCaptureHints = {
          enable = true,
        },
        closureReturnTypeHints = {
          enable = "always",
        },
        closureStyle = "rust_analyzer",
        expressionAdjustmentHints = {
          enable = "always",
          hideOutsideUnsafe = true,
        },
        lifetimeElisionHints = {
          enable = "skip_trivial",
        },
        parameterHints = {
          enable = false,
        },
      },
      interpret = {
        tests = true,
      },
      lens = {
        enable = false,
      },
      references = {
        excludeImports = true,
      },
      rustfmt = {
        extraArgs = {
          "+nightly",
        },
        rangeFormatting = {
          enable = true,
        },
      },
      semanticHighlighting = {
        operator = {
          specialization = {
            enable = true,
          },
        },
        punctuation = {
          enable = true,
          separate = {
            macro = {
              bang = true,
            },
          },
          specialization = {
            enable = true,
          },
        },
      },
      server = {
        extraEnv = {
          RA_LOG = "rust_analyzer=info",
        },
      },
      typing = {
        autoClosingAngleBrackets = {
          enable = true,
        },
      },
      workspace = {
        symbol = {
          search = {
            kind = "all_symbols",
            limit = 1024,
          },
        },
      },
    },
  },
}
