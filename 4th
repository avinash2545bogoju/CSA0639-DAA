def uniquePathsDP(m, n):
    dp = [[1] * n for _ in range(m)]  # Initialize first row & column as 1

    for i in range(1, m):
        for j in range(1, n):
            dp[i][j] = dp[i-1][j] + dp[i][j-1]

    return dp[m-1][n-1]

# Test cases
print("Unique Paths (DP):", uniquePathsDP(7, 3))  # Output: 28
print("Unique Paths (DP):", uniquePathsDP(3, 2))  # Output: 3
