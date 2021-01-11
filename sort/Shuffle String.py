class Solution:
    def restoreString(self, s: str, indices: List[int]) -> str:
        myStringList = [''] * len(s)
        for index, indice in enumerate(indices):
            myStringList[indice] = s[index]
            
        return ''.join(myStringList)