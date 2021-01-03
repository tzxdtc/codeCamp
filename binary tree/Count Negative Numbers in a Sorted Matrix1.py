class Solution:
    def countNegatives(self, grid: List[List[int]]) -> int:
        ss=0
        rows=len(grid)
        x=len(grid[0])
        e=x-1
        flag=1
        for i in range(rows):
            while flag and e>=0:
                if grid[i][e]<0:
                    e -= 1
                else:
                    break

            if e==-1:  #到达本行最左边了
                e=0
                flag=0     #点火
            elif e<x-1: #move 
                e+=1
                ss+= x-e

            if flag==0:          #机关在这里
                ss += (rows -i) * x  #一次计算
                break            #林冲放火走人
            
        return ss