SELECT (length('10,A,B')-length(REPLACE('10,A,B',',','')))/length(',') AS CNT