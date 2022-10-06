# open_business

Welcome to the Open Business gem. 

This is a gem designed to make operating a business transparent to the outside world.  

If you think about the things that a business is NOT transparent about it usually comes down to matters of **success**.  And, for an online business, that can generally be measured in terms of:

* Revenue
* Spending
* Traffic
* Customer Problems (as measured by support tickets)
* Health i.e. uptime

My name is Scott and I've been building business online and offline now since '83, some successful and some not.  What I have found about transparency is this:

* The more transparent I have been, the more successful I have been
* The fear of failure, particularly public failure, tends to inform everything I do
* I have high standards; I've been in Ruby and Rails for 15 years and expect excellence from myself; alas that is not always the case and I worry about the loss of public face
* The harder it is to be transparent, the less likely I am to be transparent
* Transparency is addictive -- once you start -- you are likely to continue -- but it is hard to start

## What this Gem Does

This gem inverts the very assumptions of business:

> That privacy and secrecy is vital and required for success

Why shouldn't someone know 

## How this Gem Works

This gem adds into your Rails application three tables:

* ob_revenues (expenses are negative revenues)
* ob_traffic_numbers
* ob_tickets

as well as controllers and models to view / update these tables.  There are also cron jobs to install onto your server.

Everything is namespaced with "ob_" to prevent clashes with existing things.

## Thank You's

This gem was developed by copying the approach used in the [commontator](https://github.com/lml/commontator) gem; all errors are ours but we did get good inspiration from them.
