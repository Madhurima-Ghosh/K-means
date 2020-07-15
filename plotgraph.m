%initialisation
clear; close all; clc;

X = [-2 2; 8 3; -1 0; 4 1; 9 2; -3 2; 8 2; -3 1; 1 0; 0 -2; 2 3; 8 5; -4 5; 6 -1; 3 3;7 -3; 3 6; -3 -1; 4 4; -2 -5]; %data set

%plotting the training set
fprintf('Plotting the data set\n');
subplot(2, 1, 1);
plot(X(:, 1), X(:, 2), 'k+','LineWidth', 1, 'MarkerSize', 7);
title('Training Set');

%training K-Means.
fprintf('Training K-Means for data set\n');
K = 2; % Number of centroids.

[centroids, closest_centroids_ids, it] = k_means_train_con(X, K);

%plotting clustered data.
fprintf('Plotting clustered data\n');
subplot(2, 1, 2);
for k=1:K
    % Plotting the cluster.
    cluster_x = X(closest_centroids_ids == k, :);
    plot(cluster_x(:, 1), cluster_x(:, 2), '+');
    hold on;

    % Plotting centroid.
    centroid = centroids(k, :);
    plot(centroid(:, 1), centroid(:, 2), 'ko', 'MarkerFaceColor', 'r', 'MarkerSize', 8);
    hold on;
end
title('Clustered Set');
it
hold off;
print -dpng 'Plot.png';