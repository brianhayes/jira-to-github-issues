jira-to-github-issues
=====================

A very hacky script to import JIRA issues to Github issues 

## How it works
Let's start by saying this doesn't work more than it does work. So use with care and read below. Therey are ways to skip a couple of the steps below but if you don't have the ability to install plugins this should help. 

1. You'll need to start with an issue view in JIRA. Save for Excel. 
2. Although that says you saved it for Excel and the file extension is .xls it's a full blown webpage. Go ahead and change that to .html
3. Run it through tidy, maybe twice for good measure. 
4. Find a way to go from a html table to a csv. There are a couple of ways to do this, [http://www.kunalbabre.com/projects/table2CSV.php] works well. 
5. Open your csv in Excel or Google Docs and remove any unused columns. You'll only need Summary, Lables, Description
6. Change the path in the .rb file as needed and run. 

After all that work you should have some new issues created in your github repo. 

*Credit: Adaped from here: [https://gist.github.com/2257596]*
