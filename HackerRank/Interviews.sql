/* Q Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are .
*/


SELECT c.contest_id, hacker_id, name, sum(ss.total_submissions), sum(ss.total_accepted_submissions),
sum(vs.total_views), sum(vs.total_unique_views)
FROM contests c
left join colleges col on col.contest_id = c.contest_id
left join Challenges ch on ch.college_id = col.college_id
left join (select challenge_id, sum(total_submissions) total_submissions, sum(total_accepted_submissions) total_accepted_submissions from Submission_Stats group by challenge_id) ss on ss.challenge_id = ch.challenge_id
left join (select challenge_id, sum(total_views) total_views, sum(total_unique_views) total_unique_views from View_Stats group by challenge_id) vs on vs.challenge_id = ch.challenge_id
group by contest_id,  hacker_id, name
HAVING SUM(ss.total_submissions) +
       SUM(ss.total_accepted_submissions) +
       SUM(vs.total_views) +
       SUM(vs.total_unique_views) > 0
ORDER BY c.contest_id





