function [fitresult, gof] = get_RE_2(pat, pat_re)
%CREATEFIT(PAT,PAT_RE)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : pat
%      Y Output: pat_re
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 18-Feb-2020 11:28:16 自动生成


%% Fit: 'untitled fit 1'.
[data,~,~]=xlsread('C:\Users\DXM\Desktop\竞赛\温州大学数学建模大赛\COVID_19\data\2019年1月-2月中国新冠肺炎数据.xls');
 
[xData, yData] = prepareCurveData( pat, pat_re );

% Set up fittype and options.
ft = fittype( 'power1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.162869601184208 0.900104485756097];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
%figure( 'Name', 'untitled fit 1' );
%h = plot( fitresult, xData, yData );
%legend( h, 'pat_re vs. pat', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
%xlabel pat
%ylabel pat_re
%grid on


