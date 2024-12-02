% Module 14 - Activity D
% Plot the data from an excel file

data = xlsread('Movie.xlsx');


% Create a new column for avg. sold


data(:,4) = data(:,3)./data(:,2); 

subplot(1,3,1)
plot(data(:,1), data(:,2), 'ko--')
xlabel('Movie Type')
ylabel('Number of Movies')
title('Number of Movies in Every Movie Type')
grid on

subplot(1,3,2)
plot(data(:,1), data(:,3), 'b*-');
xlabel('Movie Type')
ylabel('Tickets Sold')
title('Total Tickets Sold for Every Movie Type')
grid on
ylim([0 4*10^8])

subplot(1,3,3)
plot(data(:,1), data(:,4), 'rd-.')
xlabel('Movie Type')
ylabel('Tickets Sold')
title('Average Tickets Sold for Every Movie Type')
grid on
ylim([0 5*(10^6)])

% Sets the min and max values for the y-axis


% Note: ylim function isn't necessary to get full credit, but it creates
% a plot that more closely matches the provided example
% Plus... it's a good tool to have available for future plotting!


 
