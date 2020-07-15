%initializes values of centroids
function centroids = init_centroids(X, K)
  
    %consdidering any possible value from the graph as centroids
    random_ids = randperm(size(X, 1));
    centroids = X(random_ids(1:K), :);
end