function closest_centroids_ids = find_closest_centroids(X, centroids)
 
    m = size(X, 1); %rows in X
    K = size(centroids, 1); %rows in centroids
    
    closest_centroids_ids = zeros(m, 1);
    
  %calculating distance of points from centroids and choosing the min
    for i = 1:m
        distances = zeros(K, 1);
        %Calculating Euclidean distance
        for j = 1:K
            distances(j) = sum((X(i, :) - centroids(j, :)) .^ 2);
        end
        [min_distance, centroid_id] = min(distances);
        closest_centroids_ids(i) = centroid_id;
    end
end