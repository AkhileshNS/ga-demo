const cp = require('child_process');
const util = require('util');

const exec = util.promisify(cp.exec);

(async () => {
  const { stdout: gitLogs } = await exec('git --version');
  const { stdout: herokuLogs } = await exec('heroku --version');
  console.log(gitLogs);
  console.log(herokuLogs);
  console.log(process.env);
})();
