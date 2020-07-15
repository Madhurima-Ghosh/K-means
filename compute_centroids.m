function centroids = compute_centroids(X, closest_centroids_ids, K)
   
   [m n] = size(X);
    centroids = zeros(K, n);

   %calculating mean to obtain new centroid
    for centroid_id = 1:K
        centroids(centroid_id, :) = mean(X(closest_centroids_ids == centroid_id, :));
    end
end
