plot_exp <- function(start, end, step, rate) {
    require(ggplot2)
    x = seq(start, end, step)
    y = start * rate ** x
    qplot(x, y, geom="line")
}

# commands used to plot run time results from expo_timing.py
# python expo_timing.py | awk '{print substr($0, index($0,$2)) }'  > /tmp/oo2
# in R
# md = read.table('/tmp/oo2')
# matplot(md[,c(1,3)], pch=1:4, ylab='run time for 1000 runs', xlab='box t')
# title('Simple run time experiment')
# legend("topleft", c("math_wiz_wheat_in_box", "studious_wheat_in_box"), pch = c(1:2), col=c(1:2))
