--P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

--* 
--* * 
--* * * 
--* * * * 
--* * * * *
--Write a query to print the pattern P(20).

DECLARE @var int               -- Declare 
SELECT @var = 1             -- Initialization 
WHILE @var < 21                 -- condition 
BEGIN                          -- Begin 
PRINT replicate('* ', @var)    -- Print 
SET @var = @var + 1            -- increment 
END                            -- END 