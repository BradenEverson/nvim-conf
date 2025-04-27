function ColorMyPencils(color)
	color = color or "vague"
	vim.cmd.colorscheme(color)
end

ColorMyPencils('vague')
