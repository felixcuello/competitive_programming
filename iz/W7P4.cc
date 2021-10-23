class Solution {
public:
    int calculate_perimeter(vector<vector<int>>& grid, int row, int col) {
        if(col < 0) return 1;
        if(col >= grid[0].size()) return 1;
        if(row < 0) return 1;
        if(row >= grid.size()) return 1;
        if(grid[row][col] == -1) return 0;
        if(grid[row][col] == 0) return 1;
        
        grid[row][col] = -1;
        
        return
            calculate_perimeter(grid, row-1, col) +
            calculate_perimeter(grid, row, col-1) +
            calculate_perimeter(grid, row+1, col) +
            calculate_perimeter(grid, row, col+1);
    }
    
    int islandPerimeter(vector<vector<int>>& grid) {
        int perim = 0;
        bool x = true;
        for(int row=0; x && row<grid.size(); row++)
            for(int col=0; x && col<grid[0].size(); col++)
                if(grid[row][col] == 1) {
                    perim = calculate_perimeter(grid, row, col);
                    x = false;
            }
        
        return perim;
    }
};
