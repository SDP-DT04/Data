function print_hi_res(title)
	set(gcf, 'PaperPosition', [0 0 50 50]);
	print(title,'-dpng','-r100')  
