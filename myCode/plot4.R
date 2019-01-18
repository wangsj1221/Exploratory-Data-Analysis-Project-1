# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot4.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
par(mfrow = c(2,2))
with(data, plot(DateTime, Global_active_power, xlab = '', ylab = 'Global Active Power', type = 'l'))
with(data, plot(DateTime, Voltage, xlab = '', ylab = 'Voltage', type = 'l'))
with(data, plot(DateTime, Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l'))
with(data, lines(DateTime, Sub_metering_2, col = 'red'))
with(data, lines(DateTime, Sub_metering_3, col = 'blue'))
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
with(data, plot(DateTime, Global_reactive_power, xlab = '', ylab = 'Global_reactive_power', type = 'l'))
# close device
dev.off()