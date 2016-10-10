function plot_hi_res(x, y, line, title_)
	plot(x, y, line);
	set(gca,'fontsize',75, 'Xtick', 0:x(end)/20:x(end));
	title(title_);
