const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

const cohortName = process.argv[2] || "JUL02";
const values = [`%${cohortName}%`];

const queryString = `
SELECT DISTINCT teachers.name as teacher,
cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
GROUP BY teacher, cohort
ORDER BY teacher;
`;

pool
  .query(queryString, values)
  .then(res => {
    console.log("Connected.");
    // console.log(res.rows);
    res.rows.forEach(element => {
      //   console.log(user);
      console.log(`${element.cohort}: ${element.teacher}`);
    });
  })
  .catch(err => console.error("query error", err.stack));
