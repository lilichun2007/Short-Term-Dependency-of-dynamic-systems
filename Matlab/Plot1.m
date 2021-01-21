
figure(1);

%Plot continuou data generated by ODE solver
load('Continuous_data\y20.mat')
x=0.01:0.01:5;
plot(x,y20(1:500),'-');
hold on;

load('Continuous_data\y40.mat')
plot(x,y40(1:500),'-');
hold on;

load('Continuous_data\y60.mat')
plot(x,y60(1:500),'-');
hold on;
load('Continuous_data\y80.mat')
plot(x,y80(1:500),'-');
hold on;

%Plot euler discrete data
load('Discrete_data\d20.mat')
plot(x,d20(1:500),':');
hold on;

load('Discrete_data\d40.mat')
plot(x,d40(1:500),':');
hold on;

load('Discrete_data\d60.mat')
plot(x,d60(1:500),':');
hold on;

load('Discrete_data\d80.mat')
plot(x,d80(1:500),':');
hold on;

set(gca,'xtick',[0:1:5]);
legend('Continuous system (H=20oe)','Continuous system (H=40oe)','Continuous system (H=60oe)','Continuous system (H=80oe)','Euler approximation (H=20oe)','Euler approximation (H=40oe)','Euler approximation (H=60oe)','Euler approximation (H=80oe)')
%title('The output of continuous system and Euler approximation');
xlabel('Time/s');
ylabel('Angle');
grid on;


maxdiff20=max(abs(d20(1:501)-y20));
maxdiff40=max(abs(d40(1:501)-y40));
maxdiff60=max(abs(d60(1:501)-y60));
maxdiff80=max(abs(d80(1:501)-y80));
