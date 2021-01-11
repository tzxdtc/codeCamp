class Solution:
    def totalMoney(self, n: int) -> int:
        if n <= 7:
            return (1 + n) * n // 2
        
        week = n // 7
        leftDay = n % 7
        
        return self.countWeekMoney(week) * 7 + week * 28 + (week * 2 + leftDay + 1) * leftDay // 2 
    
    def countWeekMoney(self, n: int) -> int:
        week = 0
        weeks = 0
        while week < n:
            weeks += week
            week += 1
        return weeks