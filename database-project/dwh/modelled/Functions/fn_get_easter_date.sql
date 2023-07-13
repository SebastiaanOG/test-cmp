 /* Find Easter sunday via the Gauss' Easter algorithm

    a       y % 19                                                  year's position in the 19-year lunar phase cycle
    b,c,k   y % 4, y % 7, y / 100                                   corrections for century years
    p       (13 + 8*k) / 25                                         correct for the lunar orbit not being fully describable in integer terms
    q       k / 4                                                   leap-year exceptions in century years
    M       (15 - p + k - q) % 30                                   correct starting point at the start of each century
    N       (4 + k - q) % 7                                         starting point for each century
    d       (19*a + M) % 30                                         number of days between 21 March and the coincident or next following full moon
    e       (2*b + 4*c + 6*d + N) % 7)                              offset days that must be added to make d arrive on a Sunday
    o       iif(e = 6 And (d = 29 Or (d = 28 And a > 10)), 7, 0)    subtract days for 26 April OR 25 April AND a > 10
            Add d + e - o to March 22                               Easter Sunday (Gregorian calendar)

https://www.sqlservercentral.com/scripts/calculating-easter-in-sql
            
*/

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
