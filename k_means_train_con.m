%clustering algorithm
function [centroids, closest_centroids_ids, it] = k_means_train(X, K)
    
    [m n] = size(X);

    %generate random centroids
    centroids = init_centroids(X, K);
    it=0;

    %algorithm that converges
    while true
        %finding the closest centroid
        closest_centroids_ids = find_closest_centroids(X, centroids);
        
        check = centroids;
        % Compute mean
        centroids = compute_centroids(X, closest_centroids_ids, K);
      it=it+1; 
      %check convergence
      if (check == centroids)
          break;
         end
    end
end