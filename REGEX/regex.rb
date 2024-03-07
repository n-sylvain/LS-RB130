text = "cat\ncot\nCATASTROPHE\nWILDCAUGHT\n" +
       "wildcat\n-GET-\nYacht"

p text.scan(/^c.t/i) # ["cat", "cot", "CAT"]
p text.scan(/c.t$/i) # ["cat", "cot", "cat", "cht"]
