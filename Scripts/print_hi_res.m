function print_hi_res(title)
	set(gcf, 'PaperPosition', [0 0 100 100]);
	print(title,'-dpng','-r200')  
