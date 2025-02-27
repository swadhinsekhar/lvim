
-- https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/
vim.g.gutentags_ctags_exclude = {
	"*.git",
	"*.svg",
	"*.hg",
	"*/tests/*",
	"build",
	"output",
	"dist",
	"*sites/*/files/*",
	"bin",
	"node_modules",
	"bower_components",
	"cache",
	"compiled",
	"docs",
	"example",
	"bundle",
	"vendor",
	"*.md",
	"*-lock.json",
	"*.lock",
	"*bundle*.js",
	"*build*.js",
	".*rc*",
	"*.json",
	"*.min.*",
	"*.map",
	"*.bak",
	"*.zip",
	"*.pyc",
	"*.class",
	"*.sln",
	"*.Master",
	"*.csproj",
	"*.tmp",
	"*.csproj.user",
	"*.cache",
	"*.pdb",
	"tags*",
	"cscope.*",
	-- '*.css',
	-- '*.less',
	-- '*.scss',
	"*.exe",
	"*.dll",
	"*.mp3",
	"*.ogg",
	"*.flac",
	"*.swp",
	"*.swo",
	"*.bmp",
	"*.gif",
	"*.ico",
	"*.jpg",
	"*.png",
	"*.rar",
	"*.zip",
	"*.tar",
	"*.tar.gz",
	"*.tar.xz",
	"*.tar.bz2",
	"*.pdf",
	"*.doc",
	"*.docx",
	"*.ppt",
	"*.pptx",
}

vim.g.gutentags_modules = { "ctags", "cscope" }
vim.g.gutentags_project_root = { "Makefile" }
--vim.g.gutentags_exclude_filetypes = { "gitcommit", "gitconfig", "gitrebase", "gitsendemail", "git" }
--vim.g.gutentags_ctags_tagfile = "gutenctags"
--vim.g.gutentags_scopefile = "gutencscope.out"
--vim.g.gutentags_auto_add_cscope = 1
---- vim.g.gutentags_file_list_command =
----	'find . -name "*.[chsS]" -o -name "*.cpp" -o -name "*.py" -o -name "*.go" -o -name "*.sh" -o -name "*.ini" -o -name "*.rst" -o -name "*.yaml" -o -name "*.txt" -o -name "*.json"'
--vim.g.gutentags_file_list_command =
--	'find . ( -name "*.[ch]" -o -name "*.go" ) -a ( -type f -xtype f ) -o ( -path ./output -prune -false )'
--vim.g.gutentags_add_default_project_roots = false
--vim.g.gutentags_cache_dir = '~/.cache/lvim/ctags/'
--vim.g.gutentags_generate_on_new = true
--vim.g.gutentags_generate_on_missing = true
--vim.g.gutentags_generate_on_write = true
--vim.g.gutentags_generate_on_empty_buffer = 0
--vim.g.gutentags_ctags_extra_args = { '--fields=+ailmnS' }

--vim.g.gutentags_cache_dir = vim.fn.expand("~/.cache/lvim/ctags/")
--vim.g.gutentags_generate_on_new = true
--vim.g.gutentags_generate_on_missing = true
--vim.g.gutentags_generate_on_write = false
--vim.g.gutentags_generate_on_empty_buffer = true
--vim.cmd([[command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')]])
--vim.g.gutentags_ctags_extra_args = { "--tag-relative=yes", "--fields=+ailmnS" }
