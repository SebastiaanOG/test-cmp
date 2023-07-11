CREATE FUNCTION modelled.fn_get_easter_date
        (@Year CHAR(4))
RETURNS TABLE AS
RETURN
Select e7.EasterDay
From (Values (@year % 19, @year % 4, @year % 7, @year / 100))                 As e1(a, b, c, k)
Cross Apply (Values ((13 + 8*k) / 25, k / 4))                                  As e2(p, q)
Cross Apply (Values ((15 - p + k - q) % 30, (4 + k - q) % 7))                  As e3(M, N)
Cross Apply (Values ((19*a + M) % 30))                                         As e4(d)
Cross Apply (Values ((2*b + 4*c + 6*d + N) % 7))                               As e5(e)
Cross Apply (Values (iif(e = 6 And (d = 29 Or (d = 28 And a > 10)), 7, 0)))    As e6(o)
Cross Apply (Values (dateadd(day, d + e - o, datefromparts(@year, 3, 22))))    As e7(EasterDay)
;
