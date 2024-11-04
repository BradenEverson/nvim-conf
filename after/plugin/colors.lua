function ColorMyPencils(color)
	color = color or "iceberg"
	vim.cmd.colorscheme(color)
end

ColorMyPencils('vague')
