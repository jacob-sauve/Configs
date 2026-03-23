local jdtls = require('jdtls')

-- 1. Setup Workspace Path (unique per project)
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/site/java-workspace/' .. project_name

-- 2. Define the config
local config = {
  cmd = {
    'jdtls', -- Simplest if installed via Mason
    '-data', workspace_dir
  },
  root_dir = jdtls.setup.find_root({".git", "mvnw", "gradlew", "pom.xml"}),
  
  -- This is where you'd put your standard on_attach for keymaps
  on_attach = function(client, bufnr)
    -- require('your.lsp.keymaps').setup(bufnr) 
  end,
}

-- 3. Start it
jdtls.start_or_attach(config)
