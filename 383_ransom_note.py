class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        # 建立 Counter
        ctr_ransom = Counter(ransomNote)
        ctr_magazine = Counter(magazine)
        
        for key in ctr_ransom:
            # 如果 ctr_ransom[key] 出現的次數大於 ctr_magazine[key] 代表 ransom 無法被 magazine 構成
            if ctr_ransom[key] > ctr_magazine[key]:
                return False
        return True