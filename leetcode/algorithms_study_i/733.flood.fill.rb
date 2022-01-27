# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color, old_color = nil)
  rows = image.count
  cols = image[0].count
  old_color ||= image[sr][sc]
  
  return image if sr < 0 || sr >= rows
  return image if sc < 0 || sc >= cols
  return image if image[sr][sc] != old_color
  return image if image[sr][sc] == new_color
  
  image[sr][sc] = new_color
  
  flood_fill(image, sr-1, sc, new_color, old_color)
  flood_fill(image, sr+1, sc, new_color, old_color)
  flood_fill(image, sr, sc-1, new_color, old_color)
  flood_fill(image, sr, sc+1, new_color, old_color)
  
  image
end
